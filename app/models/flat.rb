class Flat < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :bookings, dependent: :destroy

  validates_presence_of :title, :description, :beds, :street, :city, :postcode, :price

end
