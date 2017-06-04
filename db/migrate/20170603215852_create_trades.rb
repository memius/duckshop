class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.string :trade_type
      t.integer :trade_id
      t.string :maker_order_id
      t.string :taker_order_id
      t.string :side
      t.string :size
      t.string :price
      t.string :product_id
      t.integer :sequence
      t.datetime :time

      t.timestamps
    end
  end
end
