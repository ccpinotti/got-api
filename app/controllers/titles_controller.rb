class TitlesController < ApplicationController
  def index
    @titles = Title.all
  end

  def new
  end

  def edit
    @title = Title.find(params[:id])
  end

  def show
  end

  def delete
  end

  def create
    Title.create(title: params[:title], character_id: params[:character_id])
    redirect_to "/titles"
  end

  def update
    @title = Title.find(params[:id])
    @title.update_attributes(title: params[:title][:title], character_id: params[:title][:character_id])
    redirect_to '/titles'
  end
end
