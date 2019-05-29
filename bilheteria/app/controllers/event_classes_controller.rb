class EventClassesController < ApplicationController
  before_action :set_event_class, only: [:show, :edit, :update, :destroy]

  # GET /event_classes
  # GET /event_classes.json
  def index
    @event_classes = EventClass.all
  end

  # GET /event_classes/1
  # GET /event_classes/1.json
  def show
  end

  # GET /event_classes/new
  def new
    @event_class = EventClass.new
  end

  # GET /event_classes/1/edit
  def edit
  end

  # POST /event_classes
  # POST /event_classes.json
  def create
    @event_class = EventClass.new(event_class_params)

    respond_to do |format|
      if @event_class.save
        format.html { redirect_to @event_class, notice: 'Event class was successfully created.' }
        format.json { render :show, status: :created, location: @event_class }
      else
        format.html { render :new }
        format.json { render json: @event_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_classes/1
  # PATCH/PUT /event_classes/1.json
  def update
    respond_to do |format|
      if @event_class.update(event_class_params)
        format.html { redirect_to @event_class, notice: 'Event class was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_class }
      else
        format.html { render :edit }
        format.json { render json: @event_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_classes/1
  # DELETE /event_classes/1.json
  def destroy
    @event_class.destroy
    respond_to do |format|
      format.html { redirect_to event_classes_url, notice: 'Event class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_class
      @event_class = EventClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_class_params
      params.require(:event_class).permit(:description)
    end
end
