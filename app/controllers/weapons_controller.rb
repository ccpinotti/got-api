class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def new
  end

  def edit
    @weapon = Weapon.find(params[:id])
  end

  def show
  end

  def delete
  end

  def create
    Weapon.create(name: params[:name], description: params[:description])
    redirect_to "/weapons"
  end

  def update
    @weapon = Weapon.find(params[:id])
    @weapon.update_attributes(name: params[:weapon][:name], description: params[:weapon][:description])
    redirect_to '/weapons'
  end
end
