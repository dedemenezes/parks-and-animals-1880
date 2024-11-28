class AnimalChoresController < ApplicationController
  def new
    @animal_chore = AnimalChore.new
    @animal = Animal.find(params[:animal_id])
  end

  def create
    # create the new animal_chore with the info from the form
    @animal_chore = AnimalChore.new(animal_chore_params)
    # find and assign the animal to this chore
    @animal = Animal.find(params[:animal_id])
    @animal_chore.animal = @animal
    @animal_chore.completed_at = Date.today

    if @animal_chore.save
      redirect_to park_path(@animal.park)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def animal_chore_params
    params.require(:animal_chore).permit(:chore_id)
  end
end
