class AddColumnToHousing < ActiveRecord::Migration
  def change
    add_column :housings, :owner_id, :integer
  end
end
