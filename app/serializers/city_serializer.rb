class CitySerializer < ActiveModel::Serializer
  attributes :name, :state, :description
end
