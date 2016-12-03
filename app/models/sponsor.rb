class Sponsor < ActiveRecord::Base
has_many :bill_sponsors
has_many :bills, through: :bill_sponsors
belongs_to :party_afflication

accepts_nested_attributes_for :party_afflication, allow_destroy: true

end
