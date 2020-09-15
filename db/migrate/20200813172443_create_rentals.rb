class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :owner
      t.string :city
      t.string :category
      t.integer :bedrooms
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
