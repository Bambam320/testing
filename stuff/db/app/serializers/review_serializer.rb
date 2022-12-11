class ReviewSerializer < ActiveModel::Serializer
  attributes :id,:comment,:rating, :title
  belongs_to :movie
  belongs_to :user
end
