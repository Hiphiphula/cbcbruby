class CreateDatafirsts < ActiveRecord::Migration[7.1]
  def change
    create_table :datafirsts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
