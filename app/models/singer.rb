class Singer < ApplicationRecord
  has_one_attached :profile_picture, dependent: :destroy, service: :s3
end
