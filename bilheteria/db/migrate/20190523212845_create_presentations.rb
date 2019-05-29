class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.integer :event
      t.date :date
      t.time :hour
      t.float :range

      t.timestamps
    end
  end
end
