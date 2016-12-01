class Bill < ActiveRecord::Base
has_many :bills_sponsors
has_many :bills_categories
has_many :actions_bills
has_many :categories, through: :bills_categories
has_many :sponsors, through: :bills_sponsors
has_many :actions, through: :actions_bills

end
