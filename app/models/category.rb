class Category < ApplicationRecord
  validates :name, presence: true
  has_one_attached :cover, dependent: :destroy
  # validates :cover, presence: true
  has_many :shootings, dependent: :destroy
end
