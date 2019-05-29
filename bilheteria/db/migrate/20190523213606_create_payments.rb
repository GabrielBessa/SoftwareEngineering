class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :buy
      t.integer :method
      t.float :paid_value
      t.date :payment_moment

      t.timestamps
    end
  end
end
