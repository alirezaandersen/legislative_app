class AddPartyAfflicationToSponsors < ActiveRecord::Migration
  def change
    add_reference :sponsors, :party_afflication, foreign_key: true
  end
end
