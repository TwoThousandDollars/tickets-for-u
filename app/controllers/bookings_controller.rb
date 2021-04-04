class BookingsController < ApplicationController

    before_action :set_booking, only: %i[ show edit update destroy ]

    def index

    end

    def new
        @booking_game = Game.where(id: params[:game]).first
        @booking = Booking.new
        @attendee = @booking.build_attendee
    end

    def create
        @booking = Booking.new(booking_params)
    
        respond_to do |format|
            if @booking.save
                format.html { redirect_to @booking, notice: "booking was successfully created." }
                format.json { render :show, status: :created, location: @booking }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @booking.errors, status: :unprocessable_entity }
            end
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
        @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
        params.require(:booking).permit(:game_id, attendee_attributes:[:id, :name, :email])
    end
end
