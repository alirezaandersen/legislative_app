class Category < ActiveRecord::Base
  audited
has_many :bill_categories
has_many :bills, through: :bill_categories
end
