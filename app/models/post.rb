class Post < ApplicationRecord

  attr_accessor :labels_raw

  belongs_to :author
  belongs_to :medium_type

  has_many :labels_posts, dependent: :destroy
  has_many :labels, through: :labels_posts

  has_rich_text :summary

  validates_presence_of :title
  validates_presence_of :summary

  scope :ordered, -> {order(created_at: :desc)}


  def persist_raw_labels
    self.labels_posts.destroy
    self.reload
    sanitized_label_array = self.labels_raw.split(";").map {|label| label.strip.titleize}.uniq
    Label.create_if_non_exist(sanitized_label_array)
    LabelsPost.create_if_non_exist(post: self, label_name_array: sanitized_label_array)
  end

  def convert_persisted_labels_to_raw
    labels.map(&:name).join("; ")
  end
end
