class BillAction < ActiveRecord::Base
  audited
  belongs_to :bills
  belongs_to :actions
end
