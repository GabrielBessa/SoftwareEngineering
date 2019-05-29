class CreateEventClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :event_classes do |t|
      t.string :description

      t.timestamps
    end
  end
end
