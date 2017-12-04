class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :swimming_level
      t.jsonb :cards_builder
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
