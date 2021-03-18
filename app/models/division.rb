class Division < ApplicationRecord
  belongs_to :conference
  belongs_to :zone

  has_many :teams
end
