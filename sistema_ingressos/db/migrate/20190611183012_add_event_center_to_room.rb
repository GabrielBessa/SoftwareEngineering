class AddEventCenterToRoom < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :event_center, foreign_key: true
  end
end
