class Conference < ApplicationRecord
    has_many :divisions
    has_many :zones, through: :divisions
end
