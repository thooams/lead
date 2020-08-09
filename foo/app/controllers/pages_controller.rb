class PagesController < ApplicationController
  skip_before_action :authenticate_consumer!

  def home
    redirect_to campaigns_path if consumer_signed_in?
  end

  def my_stat_test
    client = Koala::Facebook::API.new(current_consumer.instagram.access_token, Rails.application.credentials[Rails.env.to_sym][:facebook_app_secret])
    batch_of_media = client.get_connections(current_consumer.instagram.uid, "media", fields: "media_url, media_type, caption, timestamp, comments_count, like_count, permalink")
    @fetched_media = batch_of_media
    3.times do
      break if batch_of_media.blank?
      batch_of_media = batch_of_media.next_page
      @fetched_media += batch_of_media if batch_of_media
    end
    p @fetched_media
  end

  def other_stat_test
    client = Koala::Facebook::API.new(current_consumer.instagram.access_token, Rails.application.credentials[Rails.env.to_sym][:facebook_app_secret])
    other_user = 'yoo.paris'
    other_user_media_insights = client.get_object(current_consumer.instagram.uid, fields: "business_discovery.username(#{other_user}){profile_picture_url,username,followers_count,media_count,media{comments_count,like_count,media_url,media_type,caption}}")["business_discovery"]["media"]
    @fetched_media = other_user_media_insights["data"]
    3.times do
      break if other_user_media_insights.blank?
      next_page_code = other_user_media_insights["paging"]["cursors"]["after"]
      other_user_media_insights = client.get_object(current_consumer.instagram.uid, fields: "business_discovery.username(#{other_user}){profile_picture_url,username,followers_count,media_count,media.after(#{next_page_code}){comments_count,like_count,media_url,media_type,caption}}")["media"]
      @fetched_media += other_user_media_insights["data"] if other_user_media_insights
    end
    p @fetched_media
  end

  def profile
    # Monkey Patch
    # TODO: Remove "Identity.first" When omniauth will work
    @identity_presenter = IdentityPresenter.new(current_consumer&.identity || Identity.first)
    render "identities/show"
  end
end
