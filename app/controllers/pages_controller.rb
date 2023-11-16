class PagesController < ApplicationController

  def index
    @links = Icon.where(page: params[:controller])
  end

  def show
  end

end
