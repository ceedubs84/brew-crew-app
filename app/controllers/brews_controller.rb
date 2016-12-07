class BrewsController < ApplicationController
  def index
    @brews = Brew.all
    render 'index.json.jbuilder'
  end

  def create
    @brew = Brew.new(
      name: params[:name],
      style: params[:style],
      hop: params[:hop],
      yeast: params[:yeast],
      malts: params[:malts],
      ibu: params[:ibu],
      alcohol: params[:alcohol],
      blg: params[:blg]
    )
    @brew.save
    render 'show.json.jbuilder'
  end

  def show
    @brew = Brew.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

end
