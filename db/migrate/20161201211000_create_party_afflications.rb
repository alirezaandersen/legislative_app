class CreatePartyAfflications < ActiveRecord::Migration
  def change
    create_table :party_afflications do |t|
      t.string :title, null: false

      t.timestamps 
    end
  end
end
