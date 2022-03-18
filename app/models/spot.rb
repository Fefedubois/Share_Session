class Spot < ApplicationRecord
  belongs_to :user
  has_many :favoris
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?

  validates :name, presence: true
  validates :description, presence: true
  validates :note, presence: true

end
