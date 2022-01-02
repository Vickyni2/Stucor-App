class User < ApplicationRecord
  has_secure_password
  validates :regno, presence: true, uniqueness: true
end
