class ProjectsController < ApplicationController

  def index
    @page_name = "Projects"
    @projects = Project.all
    @menu_items = Icon.where(page: params[:controller])
  end

  def show
    if !params[:id].is_a? Numeric
      redirect_to projects_path id: params[:id]
    end
    puts "projects#show"
  end

end
