class Action < ActiveRecord::Base
has_many :actions_bills
has_many :bills, through: :actions_bills

end
