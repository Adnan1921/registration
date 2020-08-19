class ApplicationController < ActionController::Base
  before_action :fetch_menu
  def fetch_menu 
    @menu = ["partners","cars", "users"]
  end
 
  
end
