class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :ticket_type
      t.integer :room_and_presentation
      t.integer :person

      t.timestamps
    end
  end
end
