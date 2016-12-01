class CreateJoinTableBillCategories < ActiveRecord::Migration
  def change
    create_join_table :bills, :categories do |t|
      t.index [:bill_id, :category_id]

      t.timestamps
    end
  end
end
