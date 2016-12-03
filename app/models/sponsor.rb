class Sponsor < ActiveRecord::Base
audited
has_many :bill_sponsors
has_many :bills, through: :bill_sponsors
belongs_to :party_afflication

accepts_nested_attributes_for :party_afflication, allow_destroy: true

end
