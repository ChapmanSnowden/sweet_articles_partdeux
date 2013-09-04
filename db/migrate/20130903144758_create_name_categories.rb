class CreateNameCategories < ActiveRecord::Migration
  def up 
    create_table :name_categories do |t|
      t.string :category_type
    end
  end
  def down
    drop_table :name_categories
  end
end
