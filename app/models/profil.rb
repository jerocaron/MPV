class Profil < ApplicationRecord
  belongs_to :user
  has_many :bikes
  has_many :rents
end
