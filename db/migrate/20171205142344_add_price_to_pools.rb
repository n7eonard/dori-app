class AddPriceToPools < ActiveRecord::Migration[5.1]
  def change
    add_column :pools, :price, :integer
    add_column :pools, :treatment, :string
    add_column :pools, :lane, :integer
    add_column :pools, :metro, :string
    add_column :pools, :phone, :string
  end
end
