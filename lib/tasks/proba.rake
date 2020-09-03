require 'active_record'
desc 'List cars'
task :list_cars => :environment do
  @cars = Car.all()
  puts @cars
end



