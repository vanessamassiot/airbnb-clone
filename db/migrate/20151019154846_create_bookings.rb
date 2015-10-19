class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.string :status
      t.integer :client_id, index: true
      t.references :flat, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_foreign_key :bookings, :users, column: :client_id
  end
end
