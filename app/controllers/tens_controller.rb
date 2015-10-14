class TeNsController < ApplicationController
  before_action :set_ten, only: [:show, :edit, :update, :destroy]

  # GET /tens
  # GET /tens.json
  def index
    @tens = Ten.all
  end

  # GET /tens/1
  # GET /tens/1.json
  def show
  end

  # GET /tens/new
  def new
    @ten = Ten.new
  end

  # GET /tens/1/edit
  def edit
  end

  # POST /tens
  # POST /tens.json
  def create
    @ten = Ten.new(ten_params)

    respond_to do |format|
      if @ten.save
        format.html { redirect_to @ten, notice: 'Ten was successfully created.' }
        format.json { render :show, status: :created, location: @ten }
      else
        format.html { render :new }
        format.json { render json: @ten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tens/1
  # PATCH/PUT /tens/1.json
  def update
    respond_to do |format|
      if @ten.update(ten_params)
        format.html { redirect_to @ten, notice: 'Ten was successfully updated.' }
        format.json { render :show, status: :ok, location: @ten }
      else
        format.html { render :edit }
        format.json { render json: @ten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tens/1
  # DELETE /tens/1.json
  def destroy
    @ten.destroy
    respond_to do |format|
      format.html { redirect_to tens_url, notice: 'Ten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ten
      @ten = Ten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ten_params
      params.require(:ten).permit(:topic, :learning, :understood, :repeat)
    end
end
