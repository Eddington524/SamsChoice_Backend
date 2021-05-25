class PostSerializer < Panko::Serializer
  attributes :id, :user_id, :title, :content, :created_at, :updated_at 
end