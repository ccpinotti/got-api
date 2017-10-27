class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
  end

  def edit
    @location = Location.find(params[:id])
  end

  def show
  end

  def destroy
    @location = Location.find(params[:id])
    @location.delete
    redirect_to "/locations"
  end

  def create
    Location.create(name: params[:name], description: params[:description])
    redirect_to "/locations"
  end

  def update
    @location = Location.find(params[:id])
    @location.update_attributes(name: params[:location][:name], description: params[:location][:description])
    redirect_to '/locations'
  end
end
