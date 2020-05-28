class Consumer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  has_many :identities, dependent: :destroy

  def facebook
    self.identities.find_by(provider: "facebook")
  end

  def facebook_page
    self.identities.find_by(provider: "facebook_page")
  end

  def instagram
    self.identities.find_by(provider: "instagram")
  end

end
