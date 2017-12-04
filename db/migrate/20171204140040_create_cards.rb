class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.datetime :start_dateTime
      t.datetime :end_dateTime
      t.references :training, foreign_key: true
      t.references :pool, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
  end
end
