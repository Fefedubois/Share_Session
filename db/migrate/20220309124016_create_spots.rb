class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.references :user
      t.string :name
      t.string :country
      t.integer :note
      t.string :photo
      t.string :best_tide
      t.string :best_wind
      t.text :description
      t.string :localisation
      t.string :publish_date
      t.string :sous_name

      t.timestamps
    end
  end
end
