class Profil < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  
  belongs_to :user, optional: true
  has_many :bikes, dependent: :destroy
  has_many :rents, dependent: :destroy
  # validates :first_name, presence: true
  # validates :last_name, presence: true, uniqueness: { scope: :last_name }
  # validates :address, presence: true
end
