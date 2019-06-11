class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.datetime :payment_moment
      t.float :paid_amount
      t.float :change_money

      t.timestamps
    end
  end
end
