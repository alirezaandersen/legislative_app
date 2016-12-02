class Sponsor < ActiveRecord::Base
has_many :bill_sponsors
has_many :bills, through: :bill_sponsors
belongs_to :party_afflication
end
