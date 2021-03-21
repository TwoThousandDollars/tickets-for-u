class GamesController < ApplicationController
  def index
    @games = Game.where(season: 2021)
  end

  def show
  end
end
