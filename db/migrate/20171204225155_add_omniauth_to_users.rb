class AddOmniauthToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :image, :string
    add_column :users, :expires_at, :string
    add_column :users, :expires, :string
    add_column :users, :gender, :string
    add_column :users, :locale, :string
    add_column :users, :hd, :string
  end
end
