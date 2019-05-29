class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :cpf
      t.string :name
      t.string :last_name
      t.date :birthdate
      t.string :email
      t.string :login
      t.string :password

      t.timestamps
    end
  end
end
