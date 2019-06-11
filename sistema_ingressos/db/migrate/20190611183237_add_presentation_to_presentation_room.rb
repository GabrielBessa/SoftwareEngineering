class AddPresentationToPresentationRoom < ActiveRecord::Migration[5.2]
  def change
    add_reference :presentation_rooms, :presentation, foreign_key: true
  end
end
