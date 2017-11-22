class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phonenumber
      t.string :category
      t.text :reviews

      t.timestamps
    end
  end
end
