class AsController < ApplicationController
  before_action :set_a, only: [:show, :edit, :update, :destroy]

  # GET /as
  # GET /as.json
  def index
    @as = As.all
  end

  # GET /as/1
  # GET /as/1.json
  def show
  end

  # GET /as/new
  def new
    @a = As.new
  end

  # GET /as/1/edit
  def edit
  end

  # POST /as
  # POST /as.json
  def create
    @a = As.new(a_params)

    respond_to do |format|
      if @a.save
        format.html { redirect_to @a, notice: 'As was successfully created.' }
        format.json { render :show, status: :created, location: @a }
      else
        format.html { render :new }
        format.json { render json: @a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /as/1
  # PATCH/PUT /as/1.json
  def update
    respond_to do |format|
      if @a.update(a_params)
        format.html { redirect_to @a, notice: 'As was successfully updated.' }
        format.json { render :show, status: :ok, location: @a }
      else
        format.html { render :edit }
        format.json { render json: @a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /as/1
  # DELETE /as/1.json
  def destroy
    @a.destroy
    respond_to do |format|
      format.html { redirect_to as_index_url, notice: 'As was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a
      @a = As.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_params
      params.require(:a).permit(:topic, :learning, :understood, :repeat)
    end
end
