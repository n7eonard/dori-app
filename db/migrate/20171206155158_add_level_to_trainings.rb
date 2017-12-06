class AddLevelToTrainings < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :level, :string
  end
end
