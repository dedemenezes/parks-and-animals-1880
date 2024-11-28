class AnimalChoresController < ApplicationController
  def new
    @animal_chore = AnimalChore.new
    @animal = Animal.find(params[:animal_id])
  end

  def create
    # BEFORE RECEIVING MULTIPLE CHORES AT ONCE
    # create the new animal_chore with the info from the form
    # @animal_chore = AnimalChore.new(animal_chore_params)
    # # find and assign the animal to this chore
    # @animal = Animal.find(params[:animal_id])
    # @animal_chore.animal = @animal
    # @animal_chore.completed_at = Date.today

    # if @animal_chore.save
    #   redirect_to park_path(@animal.park)
    # else
    #   render 'new', status: :unprocessable_entity
    # end

    ## AFTER RECEIVING MULTIPLE CHORES (checkboxes from the form)
    # # find and assign the animal to this chore
    @animal = Animal.find(params[:animal_id])
    # find all the chores to complete
    chore_ids = params[:animal_chore][:chore_id]
    chores = Chore.where(id: chore_ids)
    # create multiple animal_Chores
    chores.each do |chore|
      AnimalChore.create(chore: chore, animal: @animal, completed_at: Date.today)
    end

    redirect_to park_path(@animal.park)
    # raise
  end

  private

  def animal_chore_params
    params.require(:animal_chore).permit(:chore_id)
  end
end
