class AddParamsToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :meilleure_taille, :string
    add_column :spots, :periode, :string
    add_column :spots, :houle, :string
  end
end
