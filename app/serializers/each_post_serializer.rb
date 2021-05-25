class EachPostSerializer < Panko::Serializer
  attributes :id, :user_id, :title, :created_at, :updated_at 

  has_one :user, serialize: UserSerializer
end