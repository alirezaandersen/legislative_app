class ChangeColumnNameCategories < ActiveRecord::Migration
  def change
    rename_column :categories, :type, :classification
  end
end
