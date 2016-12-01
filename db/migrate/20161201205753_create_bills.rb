class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.text :title, null: false
      t.text :description, null: false
      t.string :state, null: false

      t.timestamps
    end
  end
end
