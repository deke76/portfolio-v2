class MessagesController < ApplicationController
  def index
    @page_name = "Contact Me"
    @menu_items = Icon.where(page: 'messages')
  end

  def new
  end

  def create
  end

end
