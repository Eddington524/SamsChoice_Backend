class OrderEachSerializer < BaseSerializer
  attributes :id, :user_id, :receiver_name, :receiver_phone, :receiver_address, :status, :total, :created_at, :updated_at 
  has_many :line_items, serializer: LineItemEachSerializer
end