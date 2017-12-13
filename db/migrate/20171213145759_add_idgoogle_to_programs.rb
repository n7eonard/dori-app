class AddIdgoogleToPrograms < ActiveRecord::Migration[5.1]
  def change
    add_column :programs, :idgoogle, :integer
  end
end
