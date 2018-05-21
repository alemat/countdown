class SubGtpsController < ApplicationController
  before_action :set_sub_gtp, only: [:show, :edit, :update, :destroy]

  # GET /sub_gtps
  # GET /sub_gtps.json
  def index
    @sub_gtps = SubGtp.all
  end

  # GET /sub_gtps/1
  # GET /sub_gtps/1.json
  def show
  end

  # GET /sub_gtps/new
  def new
    @sub_gtp = SubGtp.new
  end

  # GET /sub_gtps/1/edit
  def edit
  end

  # POST /sub_gtps
  # POST /sub_gtps.json
  def create
    @sub_gtp = SubGtp.new(sub_gtp_params)

    respond_to do |format|
      if @sub_gtp.save
        format.html { redirect_to @sub_gtp, notice: 'Sub gtp was successfully created.' }
        format.json { render :show, status: :created, location: @sub_gtp }
      else
        format.html { render :new }
        format.json { render json: @sub_gtp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_gtps/1
  # PATCH/PUT /sub_gtps/1.json
  def update
    respond_to do |format|
      if @sub_gtp.update(sub_gtp_params)
        format.html { redirect_to @sub_gtp, notice: 'Sub gtp was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_gtp }
      else
        format.html { render :edit }
        format.json { render json: @sub_gtp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_gtps/1
  # DELETE /sub_gtps/1.json
  def destroy
    @sub_gtp.destroy
    respond_to do |format|
      format.html { redirect_to sub_gtps_url, notice: 'Sub gtp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_gtp
      @sub_gtp = SubGtp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_gtp_params
      params.require(:sub_gtp).permit(:name, :start_date, :end_date, :gtp_planner_id, :description)
    end
end
