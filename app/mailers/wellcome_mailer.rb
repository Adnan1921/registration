class WellcomeMailer < ApplicationMailer
  def new_order_email
     @user = params[:user]

     mail(to: railstest18@gmail.com, subject: "You got a new user!")
   end
end
