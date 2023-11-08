class SocialsController < ApplicationController
  def index
    @page_name = "Socials"
    @menu_items = Icon.where(page: params[:controller])
  end

  def show
    @social = Social.find_by(name: params[:id])
    if @social.content_link == nil
      @profile = @social.send("#{@social.name}_user")
      @content = @social.send("#{@social.name}_content")
    end
  end

end
