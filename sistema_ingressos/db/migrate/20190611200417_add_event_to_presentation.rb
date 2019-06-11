class AddEventToPresentation < ActiveRecord::Migration[5.2]
  def change
    add_reference :presentations, :event, foreign_key: true
  end
end
