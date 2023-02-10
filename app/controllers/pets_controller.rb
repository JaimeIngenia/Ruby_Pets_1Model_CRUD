class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pets_path
    else
      render :new
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to @pet
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end
  
  private

  def pet_params
    params.require(:pet).permit(:nombre, :direccion, :raza, :encontrado)
  end
end
