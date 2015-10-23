class Flat < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"
  has_many :bookings, dependent: :destroy

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  geocoded_by :full_address
  after_validation :geocode, if: :full_address_changed?

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates_presence_of :title, :description, :beds, :street, :city, :postcode, :price

  def full_address
    return "#{street},#{postcode},#{city},France"
  end

  def full_address_changed?
    street_changed? || city_changed? || postcode_changed?
  end
end
