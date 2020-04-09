class Category < ApplicationRecord
  validates :name, presence: true
  has_one_attached :cover, dependent: :destroy
  has_many :shootings, dependent: :destroy
end
