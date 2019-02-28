class Bike < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :rents
  has_many :profils, through: :rents
  belongs_to :profil, optional: true
  validates :marque, presence: true
  validates :age, presence: true
  validates :description, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def unavailable_dates
    rents.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end

