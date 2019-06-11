class AddRoomToPresentationRoom < ActiveRecord::Migration[5.2]
  def change
    add_reference :presentation_rooms, :room, foreign_key: true
  end
end
