class CategoryEachSerializer < Panko::Serializer
  attributes :id, :title, :image_path

  delegate :image_path, to: :object
end
