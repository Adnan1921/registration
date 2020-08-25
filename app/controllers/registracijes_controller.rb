class RegistracijesController < ApplicationController
  before_action :set_registracije, only: [:show, :edit, :update, :destroy]

  # GET /registracijes
  # GET /registracijes.json
  def index
    @registracijes = Registracije.all
  end

  # GET /registracijes/1
  # GET /registracijes/1.json
  def show
  end

  # GET /registracijes/new
  def new
    @registracije = Registracije.new
  end

  # GET /registracijes/1/edit
  def edit
  end

  # POST /registracijes
  # POST /registracijes.json
  def create
    @registracije = Registracije.new(registracije_params)

    respond_to do |format|
      if @registracije.save
        format.html { redirect_to @registracije, notice: 'Registracije was successfully created.' }
        format.json { render :show, status: :created, location: @registracije }
      else
        format.html { render :new }
        format.json { render json: @registracije.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registracijes/1
  # PATCH/PUT /registracijes/1.json
  def update
    respond_to do |format|
      if @registracije.update(registracije_params)
        format.html { redirect_to @registracije, notice: 'Registracije was successfully updated.' }
        format.json { render :show, status: :ok, location: @registracije }
      else
        format.html { render :edit }
        format.json { render json: @registracije.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registracijes/1
  # DELETE /registracijes/1.json
  def destroy
    @registracije.destroy
    respond_to do |format|
      format.html { redirect_to registracijes_url, notice: 'Registracije was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registracije
      @registracije = Registracije.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registracije_params
      params.require(:registracije).permit(:car_id, :car_exp_date)
    end
end
