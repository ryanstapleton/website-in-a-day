class Sandwich < ApplicationRecord
  mount_uploader :main_image, ImagesUploader
end
