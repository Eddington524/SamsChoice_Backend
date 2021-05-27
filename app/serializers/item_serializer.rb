  class ItemSerializer < Panko::Serializer
    attributes :id, :name, :price, :category_id, :image, :description
    has_many :options, serializer: OptionEachSerializer
  end
