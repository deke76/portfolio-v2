class PagesController < ApplicationController

  def index
    @links = {
      "settings": "bars-solid.svg",
      "details": "circle-info-solid.svg",
      "projects": "puzzle-piece-solid.svg",
      "contacts": "paper-plane-solid.svg",
      "socials": "at-solid.svg"
    }
  end

  def show
  end

end
