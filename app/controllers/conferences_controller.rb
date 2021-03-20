class ConferencesController < ApplicationController
    has_many :divisions
    has_many :teams, through: :divisions
end
