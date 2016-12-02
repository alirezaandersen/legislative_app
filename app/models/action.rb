class Action < ActiveRecord::Base
has_many :bill_actions
has_many :bills, through: :bill_actions

end
