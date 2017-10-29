class RenameUsersId < ActiveRecord::Migration[5.0]
  def change
    rename_column :works, :users_id, :owner_id
  end
end
