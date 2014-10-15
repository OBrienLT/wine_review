class WinesController < ApplicationController
  def index
  	@wines = Wine.all
  end

  def show
  	@wine = Wine.find(params[:id])
  end

  def new
  	@wine = Wine.new
  end

  def create
  	@wine = Wine.new(wine_params)
  	@wine.save
  	redirect_to @wine
  end

  private

  def wine_params
  	params.require(:wine).permit(:name, :year, :country, :winery, :varietal)
  end
end