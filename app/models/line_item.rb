class LineItem < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :option, optional:true
end
