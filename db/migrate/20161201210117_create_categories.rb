class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
