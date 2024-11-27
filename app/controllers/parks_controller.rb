class ParksController < ApplicationController
  def show
    @parks = Park.find(params[:id])

    # WE NEED TO CREATE THE EMPTY INSTANCE HEEEERREEEEE!
    @animal = Animal.new
  end
end
