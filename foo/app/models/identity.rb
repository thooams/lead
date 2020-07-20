class Identity < ApplicationRecord
  belongs_to :consumer, optional: true
  validates :user_name, presence: true

  def self.find_or_initialize_business_accounts(business_accounts)
    business_accounts.map { |business_account| { facebook_page: self.find_or_initialize_business_account(business_account[:facebook_page]), instagram: self.find_or_initialize_business_account(business_account[:instagram]) } }
  end

  def self.find_or_initialize_business_account(business_account)
    case business_account[:provider]
    when "facebook_page"
      identity = find_or_initialize_by(uid: business_account["id"], provider: "facebook_page")
      identity.access_token = business_account[:access_token]
      identity.user_name = "@" + (business_account["username"] || business_account["name"] || '')
      identity.link = business_account["link"]
      identity.profile_pict = business_account["picture"]["data"]["url"] if (business_account["picture"] && business_account["picture"]["data"])
      identity.number_of_followers = business_account["fan_count"]
    when "instagram"
      identity = find_or_initialize_by(uid: business_account["id"], provider: "instagram")
      identity.uid = business_account["id"]
      identity.access_token = business_account[:access_token]
      identity.user_name = "@" + business_account["username"]
      identity.link = "https://www.instagram.com/" + business_account["username"]
      identity.profile_pict = business_account["profile_picture_url"]
      identity.number_of_followers = business_account["followers_count"]
    end
    identity
  end

  def self.find_or_initialize_for_oauth(auth)
    identity = find_or_initialize_by(uid: auth.uid, provider: auth.provider)
    identity.access_token = auth.credentials.token
    identity.user_name = "@" + auth.info.name
    identity.link = auth.extra.raw_info.link
    identity.profile_pict = auth.info.image
    identity
  end
end
