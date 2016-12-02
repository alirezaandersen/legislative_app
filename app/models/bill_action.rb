class BillAction < ActiveRecord::Base
  belongs_to :bills
  belongs_to :actions
end
