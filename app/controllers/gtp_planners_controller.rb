class GtpPlannersController < ApplicationController
  before_action :set_gtp_planner, only: [:show, :edit, :update, :destroy]

  # GET /gtp_planners
  # GET /gtp_planners.json
  def index
    @gtp_planners = GtpPlanner.all
  end

  # GET /gtp_planners/1
  # GET /gtp_planners/1.json
  def show
  end

  # GET /gtp_planners/new
  def new
    @gtp_planner = GtpPlanner.new
  end

  # GET /gtp_planners/1/edit
  def edit
  end

  # POST /gtp_planners
  # POST /gtp_planners.json
  def create
    @gtp_planner = GtpPlanner.new(gtp_planner_params)

    respond_to do |format|
      if @gtp_planner.save
        format.html { redirect_to @gtp_planner, notice: 'Gtp planner was successfully created.' }
        format.json { render :show, status: :created, location: @gtp_planner }
      else
        format.html { render :new }
        format.json { render json: @gtp_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gtp_planners/1
  # PATCH/PUT /gtp_planners/1.json
  def update
    respond_to do |format|
      if @gtp_planner.update(gtp_planner_params)
        format.html { redirect_to @gtp_planner, notice: 'Gtp planner was successfully updated.' }
        format.json { render :show, status: :ok, location: @gtp_planner }
      else
        format.html { render :edit }
        format.json { render json: @gtp_planner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gtp_planners/1
  # DELETE /gtp_planners/1.json
  def destroy
    @gtp_planner.destroy
    respond_to do |format|
      format.html { redirect_to gtp_planners_url, notice: 'Gtp planner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gtp_planner
      @gtp_planner = GtpPlanner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gtp_planner_params
      params.require(:gtp_planner).permit(:name, :start_date, :end_date, :description)
    end
end
