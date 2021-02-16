class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :bank, null: false

      t.timestamps
      t.index [:user_id, :name], unique: true
    end
  end
end
