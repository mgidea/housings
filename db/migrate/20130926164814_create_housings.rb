class CreateHousings < ActiveRecord::Migration
  def change
    create_table :housings do |t|
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip_code, null: false
      t.string :description

      t.timestamps
    end
  end
end
