class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.integer :beds
      t.string :street
      t.string :city
      t.string :postcode
      t.integer :price
      t.integer :owner_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :flats, :users, column: :owner_id
  end
end
