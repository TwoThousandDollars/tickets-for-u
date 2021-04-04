class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  def index
    @games = Game.all
    @teams = Team.all
    @weeks = Game.select('DISTINCT week')
    @seasons = Game.select('DISTINCT season')
    @search = params[:game]
    if @search
      home_team_id = @search['home_team_id']
      away_team_id = @search['away_team_id']
      week = @search['week']
      season = @search['season']

      @results = Game.where(home_team_id: home_team_id,
                            away_team_id: away_team_id,
                            week: week,
                            season: season)

      if @results.empty?
        flash.alert = "Game not found"
      end
    end
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_game
    @game = Game.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def game_params
    params.require(:game).permit(:home_team_id, :away_team_id, :week, :season)
  end
end
