class ItemEachSerializer < Panko::Serializer
  
  attributes :id, :price, :name

  has_many :options, serializer: OptionEachSerializer
  has_one :category, serializer: CategorySerializer
end
