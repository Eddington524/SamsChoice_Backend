class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :option, optional:true
end
