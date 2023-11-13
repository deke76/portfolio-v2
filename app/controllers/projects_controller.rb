class ProjectsController < ApplicationController

  def index
    @page_name = "Projects"
    @projects = Project.all
    @menu_items = Icon.where(page: params[:controller])
  end

  def show
  end

end
