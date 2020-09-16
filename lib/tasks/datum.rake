



require 'active_record'
desc 'datum'
task :datum => :environment do
  #izlistaj sve registracije njihov id i datum
  #pretvori sve u timestamp kad izlistam registracije car exp date
  @registracijes = Registracije.all()
  for registracije in @registracijes do
    
        puts "registracije id: #{registracije.id}"
    puts "datum: #{registracije.car_exp_date}"
  
    
    
    
  end
  


  end

