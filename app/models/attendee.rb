class Attendee < ApplicationRecord
    has_many :bookings
    has_many :games, through: :bookings
end
