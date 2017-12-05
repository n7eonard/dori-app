class AddNameToPools < ActiveRecord::Migration[5.1]
  def change
    add_column :pools, :name, :string
    add_column :pools, :size, :integer
    add_column :pools, :open, :boolean, default: true
  end
end
