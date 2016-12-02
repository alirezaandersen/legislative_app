class BillSponsor < ActiveRecord::Base
  belongs_to :bills
  belongs_to :sponsors
end
