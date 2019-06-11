class AddPresentationRoomToTicket < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :presentation_room, foreign_key: true
  end
end
