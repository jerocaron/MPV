class Bike < ApplicationRecord
  belongs_to :profil
  mount_uploader :photo, PhotoUploader
end
