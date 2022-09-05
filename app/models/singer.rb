class Singer < ApplicationRecord
  validates :profile_picture, presence: true
  has_many :albums
  has_one_attached :profile_picture, dependent: :destroy
end
