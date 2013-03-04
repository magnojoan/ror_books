class RemoveCategoryFromBooks < ActiveRecord::Migration
  def up
    remove_column :books, :category
  end

  def down
    add_column :books, :category, :decimal
  end
end
