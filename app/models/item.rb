class Item < ApplicationRecord
  has_many :options, dependent: :destroy
  belongs_to :category
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  paginates_per 10
  enum status: { active: 0, disabled: 1 }
end
