class Api::V1::BrewsController < ApplicationController
  def index
    @brews = Brew.all
    render 'index.json.jbuilder'
  end

  def create
    @brew = Brew.new(
      name: params[:name],
      style: params[:style]
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
    @brew.name = params[:name] || @brew.name
    @brew.style = params[:style] || @brew.style
    @brew.hop = params[:hop] || @brew.hop
    @brew.yeast = params[:yeast] || @brew.yeast
    @brew.malts = params[:malts] || @brew.malts
    @brew.ibu = params[:ibu] || @brew.ibu
    @brew.alcohol = params[:alcohol] || @brew.alcohol
    @brew.blg = params[:blg] || @brew.blg
    @brew.save
    render 'show.json.jbuilder'
  end

  def destroy
    @brew = Brew.find_by(id: params[:id])
    @brew.destroy
    render json: { message: "Brew successfully destroyed!" }
  end

end
