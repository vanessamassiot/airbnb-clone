class Flat < ActiveRecord::Base
  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :bookings, dependent: :destroy

  validates_presence_of :title, :description, :beds, :street, :city, :postcode, :price

  def full_address
    return "#{street},#{postcode},#{city},France"
  end

  def full_address_changed?
    street_changed? || city_changed? || postcode_changed?
  end
end
