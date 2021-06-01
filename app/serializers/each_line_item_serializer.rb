class LineItemEachSerializer < Panko::Serializer
  attributes :id, :quantity, :total_price, :order
  has_many :option, serializer:OptionEachSerializer
end