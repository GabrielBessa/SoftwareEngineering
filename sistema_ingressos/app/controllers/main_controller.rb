class MainController < ApplicationController
  before_action :check_session
  
  def index
  end

  def check_session
      redirect_to new_user_session_path unless user_signed_in?
  end
end
