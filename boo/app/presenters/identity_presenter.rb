class IdentityPresenter < ApplicationPresenter
  include Webpacker::Helper
  include ActionView::Helpers
  attr_accessor :identity

  delegate :number_of_followers, to: :@identity

  def initialize identity
    @identity = identity
  end

  def name
    identity.user_name
  end

  def image
    identity.profile_pict
  end

  def url
    identity.link
  end

  def trend_percent
    posts.average(&:trend_percent)
  end

  def posts
    [
      OpenStruct.new(created_at: Date.today, likes_count: 1238, comments_count: 345, trend_percent: 5.4, image: asset_pack_path('media/static/1.png')),
      OpenStruct.new(created_at: Date.today+1, likes_count: 841, comments_count: 128, trend_percent: 4.1, image: asset_pack_path('media/static/2.png')),
      OpenStruct.new(created_at: Date.today+2, likes_count: 1759, comments_count: 519, trend_percent: 9.8, image: asset_pack_path('media/static/3.png')),
      OpenStruct.new(created_at: Date.today+3, likes_count: 1026, comments_count: 305, trend_percent: 5.1, image: asset_pack_path('media/static/4.png'))
    ].sort_by(&:created_at).reverse
  end

  def heatmap_values
    50.times.map do |_|
      date = rand((Time.now-7.days).to_i..Time.now.to_i)
      Hash[date, rand(100)]
    end.reduce({}, :merge)
  end
end
