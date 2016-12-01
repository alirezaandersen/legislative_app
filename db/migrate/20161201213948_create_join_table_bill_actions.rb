class CreateJoinTableBillActions < ActiveRecord::Migration
  def change
    create_join_table :bills, :actions do |t|
      t.index [:bill_id, :action_id]

      t.timestamps
    end 
  end
end
