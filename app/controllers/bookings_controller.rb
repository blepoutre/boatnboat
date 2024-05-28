class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @user = current_user
    @booking = Booking.new(bookings_params)
    @booking.boat = @boat
    @booking.user = @user
    
    if @booking.save
      redirect_to boat_bookings_path(@booking.boat_id)
    else
      render :new, status: :unprocessable_entity
    end 
  end

  def show
    @booking = Booking.find(params[:id])
  end 

  def index
    @bookings = Booking.all
  end

  private

  def bookings_params
    params.require(:booking).permit(:begin_date, :end_date, :status, :rating, :boat_id, :user_id)
  end
end
