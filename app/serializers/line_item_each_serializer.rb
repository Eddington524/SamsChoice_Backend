class LineItemEachSerializer < Panko::Serializer
  attributes :id, :quantity, :total_price, :order_id
  has_many :option, serializer: OptionEachSerializer
end