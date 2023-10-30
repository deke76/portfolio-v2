class SocialsController < ApplicationController
  def index
    @page_name = "Socials"
    @socials = Social.all
  end

end
