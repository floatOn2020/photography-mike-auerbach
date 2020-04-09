class Shooting < ApplicationRecord
  belongs_to :category
  has_one_attached :cover
  has_many_attached :photos
end
