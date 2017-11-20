class User < ApplicationRecord
  has_secure_password
  validates :username, :password, presence: true
  validates :username, uniqueness: true
  validates :password, length: {in: 5..8 }
  validates :username, length: {in: 5..8 }
end
