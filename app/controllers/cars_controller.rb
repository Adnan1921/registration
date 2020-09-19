class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
@cars = Car.where( :user_id => current_user.id )

    
  end

  # GET /cars/1require "cars_controller"
  
  # GET /cars/1.json
  
    
  
 
  
  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        existing = Registracije.where("car_id = #{@car.id}")
   
        puts existing.count
        if existing.count < 1
          puts "upisi u bazu"
    
          @registracije = Registracije.new
          @registracije.car_id = @car.id
          @registracije.car_exp_date = @car.registration_date
     
          @registracije.save
        end
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
     @registracije = Registracije.where("car_id = #{@car.id}") 
    @registracije[0].destroy
    
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
    
  
  end
 
  
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:user_id, :plate, :registration_date, :telefon, :ime_vozila, :ime_vlasnika )
    end
    
    
    
   
end
