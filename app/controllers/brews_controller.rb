class BrewsController < ApplicationController
  def index
    @brews = Brew.all
    render 'index.json.jbuilder'
  end

  def show
    @brew = Brew.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

end
