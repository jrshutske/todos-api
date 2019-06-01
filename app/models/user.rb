class User < ApplicationRecord
  # encrypt password
  has_secure_password

  has_many :todos, foreign_key: :created_by
  has_many :items, through: :todos

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
end
