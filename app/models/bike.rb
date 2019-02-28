class Bike < ApplicationRecord
  belongs_to :profil
  has_many :rents
  has_many :profils, through: :rents
  mount_uploader :photo, PhotoUploader

  def unavailable_dates
    rents.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  # validates :price_per_day, presence: true
end
