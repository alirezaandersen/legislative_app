class Sponsor < ActiveRecord::Base
has_many :bills_sponsors
has_many :bills, through: :bills_sponsors
belongs_to :party_afflication
end
