class DropItemsTable < ActiveRecord::Migration[5.1]

  def up
    drop_table :items
  end

  def down
    create_table :items
  end

end
