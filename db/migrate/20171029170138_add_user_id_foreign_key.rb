class AddUserIdForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_reference :works, :users, index: true
  end
end
