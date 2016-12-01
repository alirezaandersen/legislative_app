class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
    
      t.timestamps
    end
  end
end
