class AddNullsToOwners < ActiveRecord::Migration
  def change
    change_column :owners, :first_name, :string, null: false
    change_column :owners, :last_name, :string, null: false
    change_column :owners, :email, :string, null: false
  end


end
