class BillCategory < ActiveRecord::Base
  audited
  belongs_to :bill
  belongs_to :category
end
