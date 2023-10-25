class LinkedinController < ApplicationController
  def index
    @content = HTTParty.get('https://widgets.sociablekit.com/instagram-feed/iframe/215401')
  end
end
