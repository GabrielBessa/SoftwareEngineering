class AddAgeGroupToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :age_group, foreign_key: true
  end
end
