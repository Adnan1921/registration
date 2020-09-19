require 'action_view'
require 'action_view/helpers'
include ActionView::Helpers::DateHelper



require 'active_record'
desc 'datum'
task :datum => :environment do
  @registracijes = Registracije.all()
  for registracije in @registracijes do
    
        puts "registracije id: #{registracije.id}"
        puts registracije.car_exp_date
        @datum = registracije.car_exp_date.split("/")
        @dan = @datum[1].to_i
        @mjesec = @datum[0].to_i
        @vrijemePrije = DateTime.civil(2020, @mjesec, @dan, 0, 0, 0, 0)
    @dana = (@vrijemePrije.to_date - Time.now.to_date).to_i
    if @dana > 0 && @dana < 10 
    
    puts "istice za #{@dana} dana"
  end
    
    
  end
  


  end

