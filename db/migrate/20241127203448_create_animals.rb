class CreateAnimals < ActiveRecord::Migration[7.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :image_url
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
