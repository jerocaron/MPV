class Profil < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bikes
  has_many :rents
  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: { scope: :last_name }
  validates :address, presence: true
end
