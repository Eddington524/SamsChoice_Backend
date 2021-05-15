class Option < ApplicationRecord
  belongs_to :item

  has_many :line_items, dependent: :nullify
end
