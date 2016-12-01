class Category < ActiveRecord::Base
has_many :bills_categories
has_many :bills, through: :bills_categories
end
