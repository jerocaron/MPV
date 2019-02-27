class Bike < ApplicationRecord
  belongs_to :profil

  validates :marque, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :photo, presence: true


  mount_uploader :photo, PhotoUploader

end

validates :photo, presence: true
