class ItsController < ApplicationController
  before_action :set_it, only: [:show, :edit, :update, :destroy]

  # GET /its
  # GET /its.json
  def index
    @its = Its.all
  end

  # GET /its/1
  # GET /its/1.json
  def show
  end

  # GET /its/new
  def new
    @it = Its.new
  end

  # GET /its/1/edit
  def edit
  end

  # POST /its
  # POST /its.json
  def create
    @it = Its.new(it_params)

    respond_to do |format|
      if @it.save
        format.html { redirect_to @it, notice: 'Its was successfully created.' }
        format.json { render :show, status: :created, location: @it }
      else
        format.html { render :new }
        format.json { render json: @it.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /its/1
  # PATCH/PUT /its/1.json
  def update
    respond_to do |format|
      if @it.update(it_params)
        format.html { redirect_to @it, notice: 'Its was successfully updated.' }
        format.json { render :show, status: :ok, location: @it }
      else
        format.html { render :edit }
        format.json { render json: @it.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /its/1
  # DELETE /its/1.json
  def destroy
    @it.destroy
    respond_to do |format|
      format.html { redirect_to its_index_url, notice: 'Its was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_it
      @it = Its.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def it_params
      params.require(:it).permit(:topic, :learning, :understood, :subject, :repeat)
    end
end
