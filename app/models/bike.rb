class Bike < ApplicationRecord
  belongs_to :profil
  mount_uploader :photo, PhotoUploader
  validates :marque, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :photo, presence: true
end
