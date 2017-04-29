class DayOfWeeksController < ApplicationController
  before_action :set_day_of_week, only: [:show, :edit, :update, :destroy]

  # GET /day_of_weeks
  # GET /day_of_weeks.json
  def index
    @day_of_weeks = DayOfWeek.all
  end

  # GET /day_of_weeks/1
  # GET /day_of_weeks/1.json
  def show
  end

  # GET /day_of_weeks/new
  def new
    @day_of_week = DayOfWeek.new
  end

  # GET /day_of_weeks/1/edit
  def edit
  end

  # POST /day_of_weeks
  # POST /day_of_weeks.json
  def create
    @day_of_week = DayOfWeek.new(day_of_week_params)

    respond_to do |format|
      if @day_of_week.save
        format.html { redirect_to @day_of_week, notice: 'Day of week was successfully created.' }
        format.json { render :show, status: :created, location: @day_of_week }
      else
        format.html { render :new }
        format.json { render json: @day_of_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_of_weeks/1
  # PATCH/PUT /day_of_weeks/1.json
  def update
    respond_to do |format|
      if @day_of_week.update(day_of_week_params)
        format.html { redirect_to @day_of_week, notice: 'Day of week was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_of_week }
      else
        format.html { render :edit }
        format.json { render json: @day_of_week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_of_weeks/1
  # DELETE /day_of_weeks/1.json
  def destroy
    @day_of_week.destroy
    respond_to do |format|
      format.html { redirect_to day_of_weeks_url, notice: 'Day of week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_of_week
      @day_of_week = DayOfWeek.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_of_week_params
      params.require(:day_of_week).permit(:day)
    end
end
