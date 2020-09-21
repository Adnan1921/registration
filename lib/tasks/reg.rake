



require 'active_record'
desc 'List cars'
task :reg => :environment do
  @cars = Car.all()
  for car in @cars do
    puts "user: #{car.user_id}"
    puts "reg: #{car.registration_date}"
    puts "car id:#{car.id} "
    puts "ime vozila:#{car.ime_vozila} "
    
    
    # ovdje provjeri dal ima u registracijama auto
   existing = Registracije.where("car_id = #{car.id}")
   
   puts existing.count
   if existing.count < 1
     puts "upisi u bazu"
    
     @registracije = Registracije.new
     @registracije.car_id = car.id
     @registracije.car_exp_date = car.registration_date
     
     @registracije.save
   end
  
end


  end

