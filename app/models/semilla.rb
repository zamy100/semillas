class Semilla < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
