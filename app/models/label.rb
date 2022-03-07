class Label < ApplicationRecord
    has_many :labels_posts, dependent: :destroy
    has_many :posts, through: :labels_posts

    scope :ordered, -> {order(name: :asc)}


    def self.create_if_non_exist(label_name_array)
      label_name_array.each do |label_name|
        self.create(name: label_name) if !self.find_by(name: label_name).present?
      end
    end
end
