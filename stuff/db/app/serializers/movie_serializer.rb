class MovieSerializer < ActiveModel::Serializer
  attributes :id,:category,:poster_url,:description,:year,:length, :title
  has_many :reviews
  has_many :users, through: :reviews
end
