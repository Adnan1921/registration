class PagesController < ApplicationController
  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Registracije.all.where("lower(car_exp_date) LIKE :search", search: @parameter)  
    end  
  end
end