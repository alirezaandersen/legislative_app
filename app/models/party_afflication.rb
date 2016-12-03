class PartyAfflication < ActiveRecord::Base
audited
has_many :sponsor

end
