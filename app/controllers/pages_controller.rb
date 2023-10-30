class PagesController < ApplicationController

  def index
    @links = Icon.where(page: 'pages')
  end

  def show
  end

end
