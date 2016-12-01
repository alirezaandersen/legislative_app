class BillSponsor < ActiveRecord::Base
  belongs_to :bill
  belongs_to :sponsor
end
