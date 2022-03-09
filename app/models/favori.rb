class Favori < ApplicationRecord
  has_many :spots, through: :users
end
