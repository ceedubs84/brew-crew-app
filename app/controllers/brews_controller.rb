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

  def update
    @brew = Brew.find_by(id: params[:id])
    @brew.name = params[:name]
    @brew.style = params[:style]
    @brew.hop = params[:hop]
    @brew.yeast = params[:yeast]
    @brew.malts = params[:malts]
    @brew.ibu = params[:ibu]
    @brew.alcohol = params[:alcohol]
    @brew.blg = params[:blg]
    @brew.save
    render 'show.json.jbuilder'
  end

  def destroy
    @brew = Brew.find_by(id: params[:id])
    @brew.destroy
    render 'index.json.jbuilder'
  end

end
