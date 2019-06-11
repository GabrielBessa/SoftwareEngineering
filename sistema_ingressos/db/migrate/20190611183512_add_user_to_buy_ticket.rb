class AddUserToBuyTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :buy_tickets, :user, foreign_key: true
  end
end
