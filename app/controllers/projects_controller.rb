class ProjectsController < ApplicationController

  def index
    @page_name = "Projects"
    @projects = Project.all
  end

  def show
  end

end
