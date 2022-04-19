class Spot < ApplicationRecord
  belongs_to :user
  has_many :favoris
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
  has_one_attached :image

  validates :name, presence: true
  validates :description, presence: true, length: {minimum: 40}
  validates :note, presence: true
  validates :adresse, presence: true
  validates :country, presence: true
  validates :meilleure_taille, presence: true
  validates :houle, presence: true
  validates :periode, presence: true
  validates :best_wind, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_adresse,
    against: [ :name, :adresse ],
    using: {
      tsearch: { prefix: true }
    }
end
