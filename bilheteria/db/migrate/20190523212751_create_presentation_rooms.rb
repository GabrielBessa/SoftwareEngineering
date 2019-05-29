class CreatePresentationRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :presentation_rooms do |t|
      t.integer :presentation
      t.integer :room

      t.timestamps
    end
  end
end
