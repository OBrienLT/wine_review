class WinesController < ApplicationController

	before_action :set_wine, 
					only: [:show, :edit, :update, :destroy ]
  
  def index
  	@wines = Wine.order(:name).page(params[:page])
  end

  def show; end

  def new
  	@wine = Wine.new
  end

  def create
  	@wine = Wine.new(wine_params)
  	if @wine.save
      redirect_to @wine, notice: "#{@wine.year} #{@wine.name} was successfully added."
    else
      render :new
    end
  end

  def edit; end

  def update
  	if @wine.update(wine_params)
      redirect_to @wine, notice: "#{@wine.year} #{@wine.name} updated."
    else
      render :edit
    end
  end

  def destroy
  	@wine.destroy
  	redirect_to wines_url, notice: "Wine was deleted."
  end

  private

  def wine_params
  	params.require(:wine).permit(:name, :year, :country, :winery, :varietal)
  end

  def set_wine
  	@wine = Wine.find(params[:id])
  end

end