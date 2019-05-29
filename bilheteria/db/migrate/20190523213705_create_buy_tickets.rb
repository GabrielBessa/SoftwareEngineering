class CreateBuyTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :buy_tickets do |t|
      t.integer :ticket
      t.integer :buyer
      t.float :value
      t.date :bought_moment

      t.timestamps
    end
  end
end
