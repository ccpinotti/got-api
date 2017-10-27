class CharactersController < ApplicationController
  def index
    @characters = Character.all
    respond_to do |format|
      format.html
      format.json { render(json: @characters) }
    end
  end

  #renders submission
  def new
  end

  def edit
    @character = Character.find(params[:id])
  end

  def show
  end

  def destroy
    @character = Character.find(params[:id])
    @character.delete
    redirect_to "/characters"
  end

  #create and update database for new character
  def create
    Character.create(name: params[:name], bio: params[:bio])
    redirect_to "/characters"
  end

  def update
    @character = Character.find(params[:id])
    @character.update_attributes(name: params[:character][:name], bio: params[:character][:bio])
    redirect_to '/characters'
  end
end
