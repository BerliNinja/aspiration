class WsksController < ApplicationController
  before_action :set_wsk, only: [:show, :edit, :update, :destroy]

  # GET /wsks
  # GET /wsks.json
  def index
    @wsks = Wsk.all
  end

  # GET /wsks/1
  # GET /wsks/1.json
  def show
  end

  # GET /wsks/new
  def new
    @wsk = Wsk.new
  end

  # GET /wsks/1/edit
  def edit
  end

  # POST /wsks
  # POST /wsks.json
  def create
    @wsk = Wsk.new(wsk_params)

    respond_to do |format|
      if @wsk.save
        format.html { redirect_to @wsk, notice: 'Wsk was successfully created.' }
        format.json { render :show, status: :created, location: @wsk }
      else
        format.html { render :new }
        format.json { render json: @wsk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wsks/1
  # PATCH/PUT /wsks/1.json
  def update
    respond_to do |format|
      if @wsk.update(wsk_params)
        format.html { redirect_to @wsk, notice: 'Wsk was successfully updated.' }
        format.json { render :show, status: :ok, location: @wsk }
      else
        format.html { render :edit }
        format.json { render json: @wsk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wsks/1
  # DELETE /wsks/1.json
  def destroy
    @wsk.destroy
    respond_to do |format|
      format.html { redirect_to wsks_url, notice: 'Wsk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wsk
      @wsk = Wsk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wsk_params
      params.require(:wsk).permit(:topic, :learning, :understood, :repeat)
    end
end
