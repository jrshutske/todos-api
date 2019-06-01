class Todo < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items, dependent: :destroy
  validates :title, presence: true
  validates :created_by, presence: true
end
