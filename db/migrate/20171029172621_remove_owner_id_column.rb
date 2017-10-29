class RemoveOwnerIdColumn < ActiveRecord::Migration[5.0]
  def change
     remove_column :works, :owner_id
  end
end
