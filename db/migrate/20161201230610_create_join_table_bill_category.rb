class CreateJoinTableBillCategory < ActiveRecord::Migration
  def change
    create_join_table :bill, :category do |t|
      t.index [:bill_id, :category_id]

      t.timestamps
    end
  end
end
