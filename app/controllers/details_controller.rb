class DetailsController < ApplicationController
  def index
    @page_name = "About Me"
    @menu_items = Icon.where(page: params[:controller])
  end

  def show
  end
  
end
