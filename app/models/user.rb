class User < ApplicationRecord
  paginates_per 8
  include ImageUrl
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable, :trackable
  
  has_many :posts, dependent: :destroy
  has_many :items, dependent: :nullify
  has_many :orders, dependent: :nullify
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :item
  
  enum gender: { unknown: 0, male: 1, female: 2 }
end
