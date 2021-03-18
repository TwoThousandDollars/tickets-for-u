class DivisionsController < ApplicationController
    before_action :set_division, only: %i[ show edit update destroy ]

    # GET /divisions or /divisions.json
    def index
        @divisions = Division.all
    end

    # GET /divisions/new
    def new
        @division = Division.new
    end

    # GET /divisions/1 or /divisions/1.json
    def show
        redirect_to root_path
    end

    # POST /divisions or /divisions.json
    def create
        @division = Division.new(division_params)

        respond_to do |format|
            if @division.save
                format.html { redirect_to @division, notice: "Division was successfully created." }
                format.json { render :index, status: :created, location: root_path }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @division.errors, status: :unprocessable_entity }
            end
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_division
        @division = Division.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def division_params
        params.require(:division).permit(:conference_id, :zone_id)
    end
end
