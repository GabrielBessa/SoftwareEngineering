class AddTicketToBuyTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :buy_tickets, :ticket, foreign_key: true
  end
end
