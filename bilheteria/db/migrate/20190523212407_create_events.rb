class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.integer :age
      t.integer :event_type
      t.date :begin_date
      t.date :end_date
      t.boolean :admin

      t.timestamps
    end
  end
end
