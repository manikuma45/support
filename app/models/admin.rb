class Admin < ApplicationRecord
  has_secure_password
  before_validation { email.downcase! }
  validates :name, presence: true
  validates :email, presence: true,uniqueness: true,length: { maximum: 255 },
  									format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 6 }
end
