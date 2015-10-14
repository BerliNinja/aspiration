class ItSystemsController < ApplicationController
  before_action :set_it_system, only: [:show, :edit, :update, :destroy]

  # GET /it_systems
  # GET /it_systems.json
  def index
    @it_systems = ItSystem.all
  end

  # GET /it_systems/1
  # GET /it_systems/1.json
  def show
  end

  # GET /it_systems/new
  def new
    @it_system = ItSystem.new
  end

  # GET /it_systems/1/edit
  def edit
  end

  # POST /it_systems
  # POST /it_systems.json
  def create
    @it_system = ItSystem.new(it_system_params)

    respond_to do |format|
      if @it_system.save
        format.html { redirect_to @it_system, notice: 'It system was successfully created.' }
        format.json { render :show, status: :created, location: @it_system }
      else
        format.html { render :new }
        format.json { render json: @it_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /it_systems/1
  # PATCH/PUT /it_systems/1.json
  def update
    respond_to do |format|
      if @it_system.update(it_system_params)
        format.html { redirect_to @it_system, notice: 'It system was successfully updated.' }
        format.json { render :show, status: :ok, location: @it_system }
      else
        format.html { render :edit }
        format.json { render json: @it_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /it_systems/1
  # DELETE /it_systems/1.json
  def destroy
    @it_system.destroy
    respond_to do |format|
      format.html { redirect_to it_systems_url, notice: 'It system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_it_system
      @it_system = ItSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def it_system_params
      params.require(:it_system).permit(:topic, :learning, :understood, :subject, :repeat)
    end
end
