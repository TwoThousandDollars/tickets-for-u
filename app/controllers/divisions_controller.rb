class DivisionsController < ApplicationController
    before_action :set_division, only: %i[ show edit update destroy ]

    # GET /divisions or /divisions.json
    def index
        @divisions = Division.all
    end

    # GET /divisions/new
    def new
        @division = division.new
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_division
        @division = division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
        params.require(:division).permit(:conference_id, :zone_id)
    end
end
