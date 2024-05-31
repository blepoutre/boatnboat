class BoatsController < ApplicationController

  def index
    @boats = Boat.all
    current_user

    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { boat: boat })
      }

    end



    if params[:query].present?
      sql_subquery = <<~SQL
        boats.name ILIKE :query
        OR boats.category ILIKE :query
        OR users.username ILIKE :query
        OR boats.description ILIKE :query
      SQL
      @boats = @boats.joins(:user).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])

    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path, status: :see_other
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :category, :price, :user_id, :description, :picture_url, :address)
  end
end
