class CookSerializer < ActiveModel::Serializer
  attributes :cook_name, :location, :cuisine, :specialty, :description, :cook_image

  has_many :ratings
end
