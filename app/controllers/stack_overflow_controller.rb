class StackOverflowController < ApplicationController
  
  def index
    @stack_profile = Social.stack_user
    @stack_questions = Social.stack_questions
    puts @stack_profile
  end
end
