class RemoveIdgoogleFromPrograms < ActiveRecord::Migration[5.1]
  def change
    remove_column :programs, :idgoogle
  end
end
