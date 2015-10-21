class Booking < ActiveRecord::Base
  belongs_to :flat
  belongs_to :client, class_name: "User", foreign_key: "client_id"

  validates_presence_of :checkin, :checkout, :status, :client_id, :flat_id
  validates :status, inclusion: { in: ["send", "confirmed", "refused"], allow_nil: false }

end
