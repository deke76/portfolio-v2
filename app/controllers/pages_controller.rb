class PagesController < ApplicationController

  def index
    @links = {
      "settings": "bi-list",
      "details": "bi-person-circle",
      "projects": "bi-puzzle-fill",
      "contacts": "bi-send-fill",
      "socials": "bi-at"
    }
  end

  def show
  end

end
