class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def new
  end

  def edit
    @house = House.find(params[:id])
  end

  def show
  end

  def destroy
    @house = House.find(params[:id])
    @house.delete
    redirect_to "/houses"
  end

  def create
    House.create(name: params[:name], house_saying: params[:house_saying])
    redirect_to "/houses"
  end

  def update
    @house = House.find(params[:id])
    @house.update_attributes(name: params[:house][:name], house_saying: params[:house][:house_saying])
    redirect_to '/houses'
  end
end
