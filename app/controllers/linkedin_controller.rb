class LinkedinController < ApplicationController
  def index
    @social = Social.find_by(name: params[:controller])
    puts "@social.link: #{@social.link}"
  end
end
