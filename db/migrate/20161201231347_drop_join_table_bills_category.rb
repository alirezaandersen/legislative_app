class DropJoinTableBillsCategory < ActiveRecord::Migration
  def change
    drop_join_table :bill, :category do |t|
      t.index [:bill_id, :category_id]

      t.timestamps
    end
  end
end
