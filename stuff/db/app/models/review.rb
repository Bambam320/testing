class Review < ApplicationRecord
  validates :comment, :rating, presence: true
  belongs_to :user
  belongs_to :movie
end
