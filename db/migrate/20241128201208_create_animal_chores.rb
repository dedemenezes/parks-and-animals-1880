class CreateAnimalChores < ActiveRecord::Migration[7.2]
  def change
    create_table :animal_chores do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :chore, null: false, foreign_key: true
      t.date :completed_at

      t.timestamps
    end
  end
end
