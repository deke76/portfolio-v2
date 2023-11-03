class InstagramController < ApplicationController
  def index
    @social = Social.find_by(name: params[:controller])
  end
end
