class PagesController < ApplicationController
  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @car = Car.all.where("ime_vozila LIKE '%#{@parametar}%' OR ime_vlasnika LIKE '%#{@parametar}%'")
      @results = Registracije.all.where("car_id LIKE '%#{@car[0].id}%'")  
    end  
  end
end