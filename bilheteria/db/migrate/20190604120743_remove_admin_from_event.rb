class RemoveAdminFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :admin, :boolean
  end
end
