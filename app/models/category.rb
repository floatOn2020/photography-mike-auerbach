class Category < ApplicationRecord
  validates :name, presence: true
  has_one_attached :cover
  has_many :shootings
end
