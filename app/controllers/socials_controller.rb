class SocialsController < ApplicationController
  require 'x'
  def initialize
    x_credentials = {
      "api_key": ENV.fetch("TWITTER_API_KEY"),
      "api_key_secret": ENV.fetch("TWITTER_API_SECRET"),
      "access_token": ENV.fetch("TWITTER_API_ACCESS_TOKEN"),
      "access_token_secret": ENV.fetch("TWITTER_API_ACCESS_SECRET")
    }
    # @x_client = X::Client.new(**x_credentials)
    # @twitter_user = @x_client.get("users/me")
  end
  
  def index
    @socials = Social.all
  end

end
