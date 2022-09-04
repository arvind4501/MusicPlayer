class Singer < ApplicationRecord
  has_many :albums
  has_one_attached :profile_picture, dependent: :destroy
end
