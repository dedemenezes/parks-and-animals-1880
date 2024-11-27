class ParksController < ApplicationController
  def show
    @parks = Park.find(params[:id])
  end
end
