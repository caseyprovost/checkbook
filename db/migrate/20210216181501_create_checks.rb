class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    create_table :checks do |t|
      t.references :account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.monetize :amount, null: false
      t.string :payee, null: false
      t.string :memo, null: true
      t.date :date, null: false, index: true

      t.timestamps
    end
  end
end
