class Sandwich < ApplicationRecord
  mount_uploader :main_image, ImagesUploader

  validates_presence_of :main_image, :title, :description
end
