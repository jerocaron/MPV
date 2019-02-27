class Profil < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: { scope: :last_name }
  validates :address, presence: true

end
