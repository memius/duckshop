class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_id
      t.string :currency
      t.string :balance
      t.string :available
      t.string :hold
      t.string :profile_id

      t.timestamps
    end
  end
end
