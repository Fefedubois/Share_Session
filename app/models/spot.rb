class Spot < ApplicationRecord
  belongs_to :user
  has_many :favoris
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true
  validates :note, presence: true
  validates :adresse, presence: true

end
