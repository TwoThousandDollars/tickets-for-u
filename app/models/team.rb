class Team < ApplicationRecord
    belongs_to :division
    belongs_to :conference
end
