class Game < ApplicationRecord
    belongs_to :home_team, class_name: "Team"
    belongs_to :away_team, class_name: "Team"
    has_many :bookings
    has_many :attendees, through: :bookings
end
