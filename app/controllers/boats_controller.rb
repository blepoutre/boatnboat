class BoatsController < ApplicationController
  def edit
    @boats = boats.find(params[:id])
  end

  def update
    @boats = boats.find(params[:id])

    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
