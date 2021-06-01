class Order < ApplicationRecord
    enum status: {active:0, disabled:1, pending: 2}
  belongs_to :user, optional: true
  has_many :line_items , dependent: :destroy
end
