class BmosController < ApplicationController
  before_action :set_bmo, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :new, :create ]


  # GET /bmos
  # GET /bmos.json
  def index
    @bmos = Bmo.all
  end

  # GET /bmos/1
  # GET /bmos/1.json
  def show
  end

  # GET /bmos/new
  def new
    @bmo = Bmo.new
  end

  # GET /bmos/1/edit
  def edit
  end

  # POST /bmos
  # POST /bmos.json
  def create
    @bmo = Bmo.new(bmo_params)

    respond_to do |format|
      if @bmo.save
        format.html { redirect_to root_path, notice: 'BMO was successfully created.' }
        format.json { render :show, status: :created, location: @bmo }
      else
        format.html { render :new }
        format.json { render json: @bmo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bmos/1
  # PATCH/PUT /bmos/1.json
  def update
    respond_to do |format|
      if @bmo.update(bmo_params)
        format.html { redirect_to @bmo, notice: 'Bmo was successfully updated.' }
        format.json { render :show, status: :ok, location: @bmo }
      else
        format.html { render :edit }
        format.json { render json: @bmo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bmos/1
  # DELETE /bmos/1.json
  def destroy
    @bmo.destroy
    respond_to do |format|
      format.html { redirect_to bmos_url, notice: 'Bmo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmo
      @bmo = Bmo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bmo_params
      params.require(:bmo).permit(:name, :email, :category, :answer, :reason)
    end
end
