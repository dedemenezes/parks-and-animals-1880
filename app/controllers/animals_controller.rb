class AnimalsController < ApplicationController
  def new
    @animal = Animal.new #create the empty instance to be used in the form!
    # raise
    # we need to find the park to be used in the form!
    @park = Park.find(params[:park_id])
  end
end
