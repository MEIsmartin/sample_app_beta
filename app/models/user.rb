class User < ActiveRecord::Base
  has_secure_password

  before_save { |user| user.email = user.email.downcase }

  validates :name, presence: true, length: { minimum: 3, maximum: 32 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]{2,}\.[a-z]{2,}\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensistive: false }

  validates :password, length: { minimum: 6 }
end
