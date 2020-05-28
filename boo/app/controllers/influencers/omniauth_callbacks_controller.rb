class Influencers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    access_token = request.env["omniauth.auth"]["credentials"]["token"]
    client = Koala::Facebook::API.new(access_token, Rails.application.credentials[Rails.env.to_sym][:facebook_app_secret])
    facebook_pages = client.get_connections("me", "accounts", fields: ["id", "name", "username", "link", "instagram_business_account", "picture.type(large)", "fan_count", "about", "emails"])
    if facebook_pages.empty?
      flash.alert = "Error ! Make sure you have a creator Instagram page and a facebook page associated to it !"
      redirect_to root_path
    else
      facebook_pages_associated_to_instagram_business_accounts = facebook_pages.select { |facebook_page| facebook_page["instagram_business_account"] }
      if facebook_pages_associated_to_instagram_business_accounts.present?
        user_token_permissions = Koala::Facebook::API.new(Rails.application.credentials[Rails.env.to_sym][:facebook_app_access_token], Rails.application.credentials[Rails.env.to_sym][:facebook_app_secret]).debug_token(access_token)["data"]["granular_scopes"]
        user_token_instagram_basic_permission = user_token_permissions.find { |user_token_permission| user_token_permission["scope"] == 'instagram_basic' }
        if user_token_instagram_basic_permission
          # Multiple Selection Of Pages and Insta Account Not handled
          raw_business_accounts = facebook_pages_associated_to_instagram_business_accounts.map { |facebook_page| { facebook_page: facebook_page.except("instagram_business_account").merge(access_token: access_token, provider: 'facebook_page'), instagram: client.get_object(facebook_page["instagram_business_account"]["id"], fields: ["ig_id", "username", "biography", "profile_picture_url.type(large)", "name", "followers_count"]).merge(access_token: access_token, provider: 'instagram') } }

          business_accounts = Identity.find_or_initialize_business_accounts(raw_business_accounts)
          existing_business_account = business_accounts.select { |business_account| business_account[:instagram].persisted? }.first
          if existing_business_account && existing_business_account[:instagram].influencer.facebook
            existing_business_account[:instagram].influencer.facebook.update(uid: request.env["omniauth.auth"]["uid"])
          end
          facebook = Identity.find_or_initialize_for_oauth(request.env["omniauth.auth"])
          flash.notice = "Welcome !"
          if existing_business_account
            influencer = existing_business_account[:instagram].influencer
            facebook_page = existing_business_account[:facebook_page]
            instagram = existing_business_account[:instagram]
            facebook_page.update(influencer_id: influencer.id)
            instagram.update(influencer_id: influencer.id)
            facebook.update(influencer_id: influencer.id)
            sign_in_and_redirect(influencer, event: :authentication)
          else
            influencer = Influencer.new(email: "instagram_#{business_accounts.first[:instagram].uid}@footemp.com")
            influencer.save(validate: false)
            facebook_page = business_accounts.first[:facebook_page]
            instagram = business_accounts.first[:instagram]
            facebook_page.update(influencer_id: influencer.id)
            instagram.update(influencer_id: influencer.id)
            facebook.update(influencer_id: influencer.id)
            sign_in_and_redirect(influencer, event: :authentication)
          end
        else
          client.delete_object("me/permissions")
          flash.alert = "Error ! Make sure you have a creator Instagram page and a facebook page associated to it !"
          redirect_to root_path
        end
      else
        client.delete_object("me/permissions")
        flash.alert = "Error ! Make sure you have a creator Instagram page and a facebook page associated to it !"
        redirect_to root_path
      end
    end
  end
end
