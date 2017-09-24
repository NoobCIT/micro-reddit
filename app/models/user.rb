class User < ApplicationRecord
  validates(:username, presence: true, length: { maximum: 20 },
            uniqueness: true)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates(:email, presence: true, length: { maximum: 40 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false })
  has_many :posts
  has_many :comments
end
