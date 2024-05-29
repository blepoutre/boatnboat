class PagesController < ApplicationController
  def home
    @boats = Boat.limit(5)
  end
end
