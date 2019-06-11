class CreatePresentations < ActiveRecord::Migration[5.2]
  def change
    create_table :presentations do |t|
      t.date :date
      t.time :hour

      t.timestamps
    end
  end
end
