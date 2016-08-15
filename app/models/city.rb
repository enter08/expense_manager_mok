class City < ActiveRecord::Base
  has_many :expenses

  validates :name, presence: true
end
