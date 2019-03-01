class Rent < ApplicationRecord
  belongs_to :bike
  belongs_to :profil

  validates :period, presence: true
end
