class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def show
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(cities_params)
      redirect_to cities_path
    else
      render :edit
    end
  end

  def create
    @city = City.new(cities_params)
    if @city.save
      redirect_to cities_path
    else
      render :new
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end  

  private

  def cities_params
    params.require(:city).permit(:name)
  end
end
