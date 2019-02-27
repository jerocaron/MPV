class Profil < ApplicationRecord
  belongs_to :user
  has_many :bikes
end
