class CreateJoinTableBillSponsors < ActiveRecord::Migration
  def change
    create_join_table :bills, :sponsors do |t|
      t.index [:bill_id, :sponsor_id]

      t.timestamps
    end 
  end
end
