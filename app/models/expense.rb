class Expense < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "images.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes

  belongs_to :city
  belongs_to :category
  belongs_to :user

  validates :value, presence: true, numericality: {only_float: true}
  # validates :user, presence: true
  validates :category, presence: true
  validates :city, presence: true
end
