class Booking < ApplicationRecord
  belongs_to :game
  belongs_to :attendee

  accepts_nested_attributes_for :attendee
end
