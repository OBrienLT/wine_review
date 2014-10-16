class LogEntriesController < ApplicationController

before_action :set_wine

  def index
  	@log_entries = @wine.log_entries.order('created_at desc')
  end

  def new
  end

  def create
  end

  private

  def set_wine
  	@wind = Wine.find(params[:wine_id])
  end
end
