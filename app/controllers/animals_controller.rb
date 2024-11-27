class AnimalsController < ApplicationController
  def create
    # raise
    # create the new animal using the information coming from the form
    @animal = Animal.new(animal_params)
    # find the park
    @park = Park.find(params[:park_id])
    # assign the park to the animal
    @animal.park = @park # ASSOCIATION!
    # save the new park
    if @animal.save
      # if it is saved we redirect the user
      redirect_to park_path(@park) #=> /parks/12434235
    else
      # if it is NOT saved we SHOW THE FORM WITH ERRORS!
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to park_path(@animal.park)
  end

  private

  def animal_params
    # permit the field coming from the form
    params.require(:animal).permit(:name, :image_url)
  end
end
