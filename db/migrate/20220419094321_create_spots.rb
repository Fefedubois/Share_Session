class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :country
      t.float :note
      t.string :photo
      t.string :periode
      t.string :best_tide
      t.string :houle
      t.string :best_wind
      t.string :meilleure_taille
      t.string :description
      t.string :localisation
      t.string :publish_date
      t.string :sous_name
      t.string :adresse
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
