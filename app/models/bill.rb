class Bill < ActiveRecord::Base
audited
has_many :bill_sponsors
has_many :bill_categories
has_many :bill_actions
# has_many :actions
has_many :categories, through: :bill_categories
has_many :sponsors, through: :bill_sponsors
has_many :actions, through: :bill_actions

# accepts_nested_attributes_for :actions, :sponsors, :categories, allow_destroy: true
accepts_nested_attributes_for :actions, allow_destroy: true
accepts_nested_attributes_for :sponsors, allow_destroy: true
accepts_nested_attributes_for :categories, allow_destroy: true

def sponsors
bill_sponsors = self.bill_sponsors
sponsor_ids = bill_sponsors.pluck(:sponsor_id)
sponsors = []
sponsor_ids.each do |id|
  sponsors << Sponsor.find(id)
end
sponsors
end

def actions
  bill_actions = self.bill_actions
  action_ids = bill_actions.pluck(:action_id)
  actions = []
  action_ids.each do |id|
    actions << Action.find(id)
  end
  actions
end

def categories
  bill_categories = self.bill_categories
  category_ids = bill_categories.pluck(:category_id)
  categories = []
  category_ids.each do |id|
    categories << Category.find(id)
  end
  categories
end
end
