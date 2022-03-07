class LabelsPost < ApplicationRecord
  belongs_to :label
  belongs_to :post

  def self.create_if_non_exist(post:, label_name_array:)
    label_name_array.each do |label_name|
      label = Label.find_by(name: label_name)
      self.create(post: post, label: label) if !self.find_by(post: post, label: label).present?
    end
  end
end
