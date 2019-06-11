class AddEventClassToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :event_class, foreign_key: true
  end
end
