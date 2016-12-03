class BillSponsor < ActiveRecord::Base
  audited
  belongs_to :bills
  belongs_to :sponsors
end
