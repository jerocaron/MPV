class Bike < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :rents, dependent: :destroy
  has_many :profils, through: :rents
  belongs_to :profil, optional: true
  validates :marque, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
