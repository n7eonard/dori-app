class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
