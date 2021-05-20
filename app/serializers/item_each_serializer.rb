class ItemEachSerializer < Panko::Serializer
  
  attributes :id, :price, :name, :image

  # has_many :options, serializer: OptionEachSerializer
  # has_one :category, serializer: CategorySerializer
end
