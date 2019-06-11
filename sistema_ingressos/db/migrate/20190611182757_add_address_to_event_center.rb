class AddAddressToEventCenter < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_centers, :address, foreign_key: true
  end
end
