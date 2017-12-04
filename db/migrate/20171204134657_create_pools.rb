class CreatePools < ActiveRecord::Migration[5.1]
  def change
    create_table :pools do |t|
      t.string :address
      t.string :opening_times

      t.timestamps
    end
  end
end
