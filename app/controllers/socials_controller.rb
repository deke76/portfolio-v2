class SocialsController < ApplicationController
  def index
    @page_name = "Socials"
    @menu_items = Icon.where(page: "socials")
  end

end
