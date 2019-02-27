class Bike < ApplicationRecord
  belongs_to :profil, optional: true
  mount_uploader :photo, PhotoUploader
  validates :marque, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
