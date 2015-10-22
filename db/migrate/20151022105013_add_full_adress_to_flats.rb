class AddFullAdressToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :full_adress, :string
  end
end
