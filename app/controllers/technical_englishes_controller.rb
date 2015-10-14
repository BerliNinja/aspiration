class TechnicalEnglishesController < ApplicationController
  before_action :set_technical_english, only: [:show, :edit, :update, :destroy]

  # GET /technical_englishes
  # GET /technical_englishes.json
  def index
    @technical_englishes = TechnicalEnglish.all
  end

  # GET /technical_englishes/1
  # GET /technical_englishes/1.json
  def show
  end

  # GET /technical_englishes/new
  def new
    @technical_english = TechnicalEnglish.new
  end

  # GET /technical_englishes/1/edit
  def edit
  end

  # POST /technical_englishes
  # POST /technical_englishes.json
  def create
    @technical_english = TechnicalEnglish.new(technical_english_params)

    respond_to do |format|
      if @technical_english.save
        format.html { redirect_to @technical_english, notice: 'Technical english was successfully created.' }
        format.json { render :show, status: :created, location: @technical_english }
      else
        format.html { render :new }
        format.json { render json: @technical_english.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technical_englishes/1
  # PATCH/PUT /technical_englishes/1.json
  def update
    respond_to do |format|
      if @technical_english.update(technical_english_params)
        format.html { redirect_to @technical_english, notice: 'Technical english was successfully updated.' }
        format.json { render :show, status: :ok, location: @technical_english }
      else
        format.html { render :edit }
        format.json { render json: @technical_english.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technical_englishes/1
  # DELETE /technical_englishes/1.json
  def destroy
    @technical_english.destroy
    respond_to do |format|
      format.html { redirect_to technical_englishes_url, notice: 'Technical english was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical_english
      @technical_english = TechnicalEnglish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technical_english_params
      params.require(:technical_english).permit(:topic, :learning, :understood, :subject, :repeat)
    end
end
