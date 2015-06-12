class MmaGymsController < ApplicationController
  before_action :set_mma_gym, only: [:show, :edit, :update, :destroy]

  # GET /mma_gyms
  # GET /mma_gyms.json
  def index
    @mma_gyms = MmaGym.all
  end

  # GET /mma_gyms/1
  # GET /mma_gyms/1.json
  def show
  end

  # GET /mma_gyms/new
  def new
    @mma_gym = MmaGym.new
  end

  # GET /mma_gyms/1/edit
  def edit
  end

  # POST /mma_gyms
  # POST /mma_gyms.json
  def create
    @mma_gym = MmaGym.new(mma_gym_params)

    respond_to do |format|
      if @mma_gym.save
        format.html { redirect_to @mma_gym, notice: 'Mma gym was successfully created.' }
        format.json { render :show, status: :created, location: @mma_gym }
      else
        format.html { render :new }
        format.json { render json: @mma_gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mma_gyms/1
  # PATCH/PUT /mma_gyms/1.json
  def update
    respond_to do |format|
      if @mma_gym.update(mma_gym_params)
        format.html { redirect_to @mma_gym, notice: 'Mma gym was successfully updated.' }
        format.json { render :show, status: :ok, location: @mma_gym }
      else
        format.html { render :edit }
        format.json { render json: @mma_gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mma_gyms/1
  # DELETE /mma_gyms/1.json
  def destroy
    @mma_gym.destroy
    respond_to do |format|
      format.html { redirect_to mma_gyms_url, notice: 'Mma gym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mma_gym
      @mma_gym = MmaGym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mma_gym_params
      params.require(:mma_gym).permit(:name, :address, :phone, :website)
    end
end
