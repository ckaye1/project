class User < ApplicationRecord
  has_secure_password
  has_many :trips

  validates :email,
      presence: true,
      uniqueness: true,
      format: {
          with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      }

  validates :password_digest,
      presence: true,
      length: {minimum: 8}

  validates :fname,
      presence: true

  validates :lname,
      presence: true

  validates :asuid,
      presence: true

  def to_s
    "#{fname} #{lname}"
  end
end
