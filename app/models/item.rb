class Item < ApplicationRecord
  has_many :options, dependent: :destroy
  belongs_to :category
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  paginates_per 10
  
  enum status: { active: 0, disabled: 1, pending: 2 }

  def puts_item_name
    puts self.name
  end

  def self.puts_item_names
    self.find_each do |item|
      puts item.name
    end
  end
end