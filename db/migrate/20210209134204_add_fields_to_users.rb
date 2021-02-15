class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :city, :string
    add_column :users, :email, :string
  end
end
