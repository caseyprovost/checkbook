class AddStartingBalanceToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :starting_balance_cents, :bigint, null: false, default: nil
  end
end
