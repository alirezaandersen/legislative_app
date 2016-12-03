class Action < ActiveRecord::Base
  audited
has_many :bill_actions
has_many :bills, through: :bill_actions

end
