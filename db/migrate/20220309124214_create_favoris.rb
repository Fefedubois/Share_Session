class CreateFavoris < ActiveRecord::Migration[6.1]
  def change
    create_table :favoris do |t|
      t.references :spot

      t.timestamps
    end
  end
end
