class AddGenderPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :gender, :string
    add_column :users, :password, :string
    add_column :users, :dob, :date
  end
end
