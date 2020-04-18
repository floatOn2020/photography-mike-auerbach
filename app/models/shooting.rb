class Shooting < ApplicationRecord
  belongs_to :category
  has_one_attached :cover, dependent: :destroy
  has_many_attached :photos, dependent: :destroy#, service: :cloudinary
  # attr_accessor :photos
end
