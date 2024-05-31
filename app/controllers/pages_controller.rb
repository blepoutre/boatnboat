class PagesController < ApplicationController
  def home
    @boats = Boat.limit(6)
  end
end
