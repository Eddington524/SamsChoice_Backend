class OptionEachSerializer < Panko::Serializer
  attributes :id, :item_id, :name, :stock, :created_at, :updated_at, :extra_cost 

  has_one :item, serializer: ItemSerializer
end