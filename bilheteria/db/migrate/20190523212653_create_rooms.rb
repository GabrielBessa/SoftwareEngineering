class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :number
      t.boolean :full
      t.integer :event_center

      t.timestamps
    end
  end
end
