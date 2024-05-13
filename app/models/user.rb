class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :messages
  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 15}
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 105 },
                    # Verify email with ruby's standard library regex
                    format: {with: URI::MailTo::EMAIL_REGEXP}
  has_secure_password


end
