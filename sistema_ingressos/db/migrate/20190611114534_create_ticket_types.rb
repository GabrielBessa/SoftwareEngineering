class CreateTicketTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_types do |t|
      t.text :description
      t.float :base_price

      t.timestamps
    end
  end
end
