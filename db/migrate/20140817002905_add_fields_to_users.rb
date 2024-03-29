class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :profile_picture_path, :string
    add_column :users, :education, :string
    add_column :users, :birthday, :date
    add_column :users, :location, :string
  end
end
