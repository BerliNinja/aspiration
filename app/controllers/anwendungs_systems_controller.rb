class AnwendungsSystemsController < ApplicationController
  before_action :set_anwendungs_system, only: [:show, :edit, :update, :destroy]

  # GET /anwendungs_systems
  # GET /anwendungs_systems.json
  def index
    @anwendungs_systems = AnwendungsSystem.all
  end

  # GET /anwendungs_systems/1
  # GET /anwendungs_systems/1.json
  def show
  end

  # GET /anwendungs_systems/new
  def new
    @anwendungs_system = AnwendungsSystem.new
  end

  # GET /anwendungs_systems/1/edit
  def edit
  end

  # POST /anwendungs_systems
  # POST /anwendungs_systems.json
  def create
    @anwendungs_system = AnwendungsSystem.new(anwendungs_system_params)

    respond_to do |format|
      if @anwendungs_system.save
        format.html { redirect_to @anwendungs_system, notice: 'Anwendungs system was successfully created.' }
        format.json { render :show, status: :created, location: @anwendungs_system }
      else
        format.html { render :new }
        format.json { render json: @anwendungs_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anwendungs_systems/1
  # PATCH/PUT /anwendungs_systems/1.json
  def update
    respond_to do |format|
      if @anwendungs_system.update(anwendungs_system_params)
        format.html { redirect_to @anwendungs_system, notice: 'Anwendungs system was successfully updated.' }
        format.json { render :show, status: :ok, location: @anwendungs_system }
      else
        format.html { render :edit }
        format.json { render json: @anwendungs_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anwendungs_systems/1
  # DELETE /anwendungs_systems/1.json
  def destroy
    @anwendungs_system.destroy
    respond_to do |format|
      format.html { redirect_to anwendungs_systems_url, notice: 'Anwendungs system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anwendungs_system
      @anwendungs_system = AnwendungsSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anwendungs_system_params
      params.require(:anwendungs_system).permit(:topic, :learning, :understood, :subject, :repeat)
    end
end
