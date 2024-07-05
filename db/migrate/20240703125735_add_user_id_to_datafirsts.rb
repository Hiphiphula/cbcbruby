class AddUserIdToDatafirsts < ActiveRecord::Migration[7.1]
  def change
    add_column :datafirsts, :user_id, :integer
    add_index :datafirsts, :user_id
  end
end
