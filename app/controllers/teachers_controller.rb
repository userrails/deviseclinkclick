class TeachersController < ApplicationController
  before_filter :is_login?
  def new
    p "*****************"
    p "Trigger"
    p current_user
    p "***********************"
  end
  
  def index
    
  end
end