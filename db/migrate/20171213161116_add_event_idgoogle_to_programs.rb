class AddEventIdgoogleToPrograms < ActiveRecord::Migration[5.1]
  def change
    add_column :programs, :eventidgoogle, :string
  end
end
