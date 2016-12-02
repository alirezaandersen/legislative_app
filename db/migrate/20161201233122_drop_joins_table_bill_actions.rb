class DropJoinsTableBillActions < ActiveRecord::Migration
  def change
    drop_join_table :bills, :actions do |t|
      t.index [:bill_id, :action_id]

      t.timestamps
    end
  end
end
