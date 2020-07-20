class Campaign < ApplicationRecord
  HASHTAG_REGEX = /\A#[a-zA-Z0-9]+\z/
  validates :brand_name, presence: true
  validates :hashtag, presence: true, format: { with: Campaign::HASHTAG_REGEX }
  validates :starts_on, presence: true
  validates :stops_on, presence: true
  validates :banner_picture_url, presence: true
  enum state: { in_definition: 0, ongoing: 1, completed: 2 }
end
