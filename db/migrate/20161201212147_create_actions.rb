class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :name, null: false

      t.timestamps 
    end
  end
end
