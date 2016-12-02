class Bill < ActiveRecord::Base
has_many :bill_sponsors
has_many :bill_categories
has_many :bill_actions
has_many :categories, through: :bill_categories
has_many :sponsors, through: :bill_sponsors
has_many :actions, through: :bill_actions

end
