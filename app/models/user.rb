class User < ApplicationRecord
  has_secure_password

  has_many :replies
  has_many :subjects

  validates :email,
          presence: true,
          format:   /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
          format:   /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
          unless:   :from_omniauth?

  serialize :twitter_raw_data

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_from_omniauth(omniauth_data)
    User.where(provider: omniauth_data["provider"],
               uid:      omniauth_data["uid"]).first
  end

  def self.create_from_omniauth(omniauth_data)
    full_name = omniauth_data["info"]["name"].split
    User.create(uid:                      omniauth_data["uid"],
                provider:                 omniauth_data["provider"],
                first_name:               full_name[0],
                last_name:                full_name[1],
                oauth_token:              omniauth_data["credentials"]["token"],
                oauth_secret:             omniauth_data["credentials"]["secret"],
                oauth_raw_data:           omniauth_data,
                password:                 SecureRandom.hex(16)
                )
  end

  private

  def from_omniauth?
    uid.present? && provider.present?
  end
end
