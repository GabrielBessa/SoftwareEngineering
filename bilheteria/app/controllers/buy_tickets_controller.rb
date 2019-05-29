class BuyTicketsController < ApplicationController
  before_action :set_buy_ticket, only: [:show, :edit, :update, :destroy]

  # GET /buy_tickets
  # GET /buy_tickets.json
  def index
    @buy_tickets = BuyTicket.all
  end

  # GET /buy_tickets/1
  # GET /buy_tickets/1.json
  def show
  end

  # GET /buy_tickets/new
  def new
    @buy_ticket = BuyTicket.new
  end

  # GET /buy_tickets/1/edit
  def edit
  end

  # POST /buy_tickets
  # POST /buy_tickets.json
  def create
    @buy_ticket = BuyTicket.new(buy_ticket_params)

    respond_to do |format|
      if @buy_ticket.save
        format.html { redirect_to @buy_ticket, notice: 'Buy ticket was successfully created.' }
        format.json { render :show, status: :created, location: @buy_ticket }
      else
        format.html { render :new }
        format.json { render json: @buy_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buy_tickets/1
  # PATCH/PUT /buy_tickets/1.json
  def update
    respond_to do |format|
      if @buy_ticket.update(buy_ticket_params)
        format.html { redirect_to @buy_ticket, notice: 'Buy ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @buy_ticket }
      else
        format.html { render :edit }
        format.json { render json: @buy_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buy_tickets/1
  # DELETE /buy_tickets/1.json
  def destroy
    @buy_ticket.destroy
    respond_to do |format|
      format.html { redirect_to buy_tickets_url, notice: 'Buy ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buy_ticket
      @buy_ticket = BuyTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buy_ticket_params
      params.require(:buy_ticket).permit(:ticket, :buyer, :value, :bought_moment)
    end
end
