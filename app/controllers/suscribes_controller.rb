class SuscribesController < ApplicationController
  before_action :set_suscribe, only: [:show, :edit, :update, :destroy]
    skip_before_action :authenticate_user!, only: [ :new, :create ]


  # GET /suscribes
  # GET /suscribes.json
  def index
    @suscribes = Suscribe.all
  end

  # GET /suscribes/1
  # GET /suscribes/1.json
  def show
  end

  # GET /suscribes/new
  def new
    @suscribe = Suscribe.new
  end

  # GET /suscribes/1/edit
  def edit
  end

  # POST /suscribes
  # POST /suscribes.json
  def create
    @suscribe = Suscribe.new(suscribe_params)

    respond_to do |format|
      if @suscribe.save
        format.html { redirect_to root_path, notice: 'Your Suscribtion was successfully created.' }
        format.json { render :show, status: :created, location: @suscribe }
      else
        format.html { render :new }
        format.json { render json: @suscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suscribes/1
  # PATCH/PUT /suscribes/1.json
  def update
    respond_to do |format|
      if @suscribe.update(suscribe_params)
        format.html { redirect_to @suscribe, notice: 'Suscribe was successfully updated.' }
        format.json { render :show, status: :ok, location: @suscribe }
      else
        format.html { render :edit }
        format.json { render json: @suscribe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suscribes/1
  # DELETE /suscribes/1.json
  def destroy
    @suscribe.destroy
    respond_to do |format|
      format.html { redirect_to suscribes_url, notice: 'Suscribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suscribe
      @suscribe = Suscribe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def suscribe_params
      params.require(:suscribe).permit(:email)
    end
end
