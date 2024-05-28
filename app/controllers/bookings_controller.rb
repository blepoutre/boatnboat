class BookingsController < ApplicationController
  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @user = user.find(params[:user_id])
    @booking = Booking.new(bookings_params)
    @booking.boat = @boat
    @booking.user = @user
    @booking.save
    redirect_to boat_bookings_path(@booking.boat_id)
  end

  def bookings_params
    params.require(:booking).permit(:begin_date, :end_date, :status, :rating, :boat_id, :user_id)
  end
end
