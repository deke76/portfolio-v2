class InstagramController < ApplicationController
  def index
    @social = Social.find_by(name: params[:controller])
    @content = Social.social_content params[:controller]
  end
end
