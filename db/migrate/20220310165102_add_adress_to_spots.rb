class AddAdressToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :adresse, :string
  end
end
