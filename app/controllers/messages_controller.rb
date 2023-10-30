class MessagesController < ApplicationController
  def index
    redirect_to new_message_path
  end

  def new
    @page_name = "Contact Me"
  end

  def create
  end

end
