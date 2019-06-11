class PresentationRoomsController < ApplicationController
  before_action :set_presentation_room, only: [:show, :edit, :update, :destroy]

  # GET /presentation_rooms
  # GET /presentation_rooms.json
  def index
    @presentation_rooms = PresentationRoom.all
  end

  # GET /presentation_rooms/1
  # GET /presentation_rooms/1.json
  def show
  end

  # GET /presentation_rooms/new
  def new
    @presentation_room = PresentationRoom.new
  end

  # GET /presentation_rooms/1/edit
  def edit
  end

  # POST /presentation_rooms
  # POST /presentation_rooms.json
  def create
    @presentation_room = PresentationRoom.new(presentation_room_params)
    if user_signed_in?
      @presentation_room.room_id = Room.ids.sample
      @presentation_room.presentation_id = Presentation.ids.sample
    end
    respond_to do |format|
      if @presentation_room.save
        format.html { redirect_to @presentation_room, notice: 'Presentation room was successfully created.' }
        format.json { render :show, status: :created, location: @presentation_room }
      else
        format.html { render :new }
        format.json { render json: @presentation_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presentation_rooms/1
  # PATCH/PUT /presentation_rooms/1.json
  def update
    respond_to do |format|
      if @presentation_room.update(presentation_room_params)
        format.html { redirect_to @presentation_room, notice: 'Presentation room was successfully updated.' }
        format.json { render :show, status: :ok, location: @presentation_room }
      else
        format.html { render :edit }
        format.json { render json: @presentation_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presentation_rooms/1
  # DELETE /presentation_rooms/1.json
  def destroy
    @presentation_room.destroy
    respond_to do |format|
      format.html { redirect_to presentation_rooms_url, notice: 'Presentation room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presentation_room
      @presentation_room = PresentationRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presentation_room_params
      params.fetch(:presentation_room, {})
    end
end
