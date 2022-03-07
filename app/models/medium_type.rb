class MediumType < ApplicationRecord
  has_many :posts

  scope :ordered, -> {order(name: :asc)}
end
