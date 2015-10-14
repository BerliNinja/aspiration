class BpsController < ApplicationController
  before_action :set_bp, only: [:show, :edit, :update, :destroy]

  # GET /bps
  # GET /bps.json
  def index
    @bps = Bp.all
  end

  # GET /bps/1
  # GET /bps/1.json
  def show
  end

  # GET /bps/new
  def new
    @bp = Bp.new
  end

  # GET /bps/1/edit
  def edit
  end

  # POST /bps
  # POST /bps.json
  def create
    @bp = Bp.new(bp_params)

    respond_to do |format|
      if @bp.save
        format.html { redirect_to @bp, notice: 'Bp was successfully created.' }
        format.json { render :show, status: :created, location: @bp }
      else
        format.html { render :new }
        format.json { render json: @bp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bps/1
  # PATCH/PUT /bps/1.json
  def update
    respond_to do |format|
      if @bp.update(bp_params)
        format.html { redirect_to @bp, notice: 'Bp was successfully updated.' }
        format.json { render :show, status: :ok, location: @bp }
      else
        format.html { render :edit }
        format.json { render json: @bp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bps/1
  # DELETE /bps/1.json
  def destroy
    @bp.destroy
    respond_to do |format|
      format.html { redirect_to bps_url, notice: 'Bp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bp
      @bp = Bp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bp_params
      params.require(:bp).permit(:topic, :learning, :understood, :repeat)
    end
end
