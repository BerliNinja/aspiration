class AspirationsController < ApplicationController
  before_action :set_aspiration, only: [:show, :edit, :update, :destroy]

  # GET /aspirations
  # GET /aspirations.json
  def index
    @aspirations = Aspiration.all
  end

  # GET /aspirations/1
  # GET /aspirations/1.json
  def show
  end

  # GET /aspirations/new
  def new
    @aspiration = Aspiration.new
  end

  # GET /aspirations/1/edit
  def edit
  end

  # POST /aspirations
  # POST /aspirations.json
  def create
    @aspiration = Aspiration.new(aspiration_params)

    respond_to do |format|
      if @aspiration.save
        format.html { redirect_to @aspiration, notice: 'Aspiration was successfully created.' }
        format.json { render :show, status: :created, location: @aspiration }
      else
        format.html { render :new }
        format.json { render json: @aspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aspirations/1
  # PATCH/PUT /aspirations/1.json
  def update
    respond_to do |format|
      if @aspiration.update(aspiration_params)
        format.html { redirect_to @aspiration, notice: 'Aspiration was successfully updated.' }
        format.json { render :show, status: :ok, location: @aspiration }
      else
        format.html { render :edit }
        format.json { render json: @aspiration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspirations/1
  # DELETE /aspirations/1.json
  def destroy
    @aspiration.destroy
    respond_to do |format|
      format.html { redirect_to aspirations_url, notice: 'Aspiration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aspiration
      @aspiration = Aspiration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aspiration_params
      params.require(:aspiration).permit(:aspiration, :start, :end, :unit, :amount, :category, :description, :coin)
    end
end
