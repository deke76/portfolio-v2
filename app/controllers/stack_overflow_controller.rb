class StackOverflowController < ApplicationController
  
  def index
    @social = Social.find_by(name: params[:controller])
    @stack_profile = Social.stack_user
    @stack_questions = Social.stack_questions
  end
end
