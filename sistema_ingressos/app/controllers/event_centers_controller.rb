class EventCentersController < ApplicationController
  before_action :set_event_center, only: [:show, :edit, :update, :destroy]

  # GET /event_centers
  # GET /event_centers.json
  def index
    @event_centers = EventCenter.all
  end

  # GET /event_centers/1
  # GET /event_centers/1.json
  def show
  end

  # GET /event_centers/new
  def new
    @event_center = EventCenter.new
  end

  # GET /event_centers/1/edit
  def edit
  end

  # POST /event_centers
  # POST /event_centers.json
  def create
    @event_center = EventCenter.new(event_center_params)

    respond_to do |format|
      if @event_center.save
        format.html { redirect_to @event_center, notice: 'Event center was successfully created.' }
        format.json { render :show, status: :created, location: @event_center }
      else
        format.html { render :new }
        format.json { render json: @event_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_centers/1
  # PATCH/PUT /event_centers/1.json
  def update
    respond_to do |format|
      if @event_center.update(event_center_params)
        format.html { redirect_to @event_center, notice: 'Event center was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_center }
      else
        format.html { render :edit }
        format.json { render json: @event_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_centers/1
  # DELETE /event_centers/1.json
  def destroy
    @event_center.destroy
    respond_to do |format|
      format.html { redirect_to event_centers_url, notice: 'Event center was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_center
      @event_center = EventCenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_center_params
      params.require(:event_center).permit(:name)
    end
end
