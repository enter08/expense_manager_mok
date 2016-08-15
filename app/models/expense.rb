class Expense < ActiveRecord::Base
  belongs_to :city
  belongs_to :category
  belongs_to :user

  validates :value, presence: true, numericality: {only_float: true}
  # validates :user, presence: true
  validates :category, presence: true
  validates :city, presence: true
end
