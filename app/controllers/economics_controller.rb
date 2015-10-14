class EconomicsController < ApplicationController
  before_action :set_economic, only: [:show, :edit, :update, :destroy]

  # GET /economics
  # GET /economics.json
  def index
    @economics = Economic.all
  end

  # GET /economics/1
  # GET /economics/1.json
  def show
  end

  # GET /economics/new
  def new
    @economic = Economic.new
  end

  # GET /economics/1/edit
  def edit
  end

  # POST /economics
  # POST /economics.json
  def create
    @economic = Economic.new(economic_params)

    respond_to do |format|
      if @economic.save
        format.html { redirect_to @economic, notice: 'Economic was successfully created.' }
        format.json { render :show, status: :created, location: @economic }
      else
        format.html { render :new }
        format.json { render json: @economic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /economics/1
  # PATCH/PUT /economics/1.json
  def update
    respond_to do |format|
      if @economic.update(economic_params)
        format.html { redirect_to @economic, notice: 'Economic was successfully updated.' }
        format.json { render :show, status: :ok, location: @economic }
      else
        format.html { render :edit }
        format.json { render json: @economic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economics/1
  # DELETE /economics/1.json
  def destroy
    @economic.destroy
    respond_to do |format|
      format.html { redirect_to economics_url, notice: 'Economic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_economic
      @economic = Economic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def economic_params
      params.require(:economic).permit(:topic, :learning, :understood, :subject, :repeat)
    end
end
