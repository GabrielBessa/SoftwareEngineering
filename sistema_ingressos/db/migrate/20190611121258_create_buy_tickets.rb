class CreateBuyTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_tickets do |t|
      t.datetime :bought_moment
      t.float :value

      t.timestamps
    end
  end
end
