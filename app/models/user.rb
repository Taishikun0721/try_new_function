class User < ApplicationRecord
  has_secure_password
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :age, presence: true
  validates :email, presence: true, uniqueness: true
end
