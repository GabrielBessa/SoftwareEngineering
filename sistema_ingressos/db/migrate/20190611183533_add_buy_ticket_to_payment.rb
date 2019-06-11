class AddBuyTicketToPayment < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :buy_ticket, foreign_key: true
  end
end
