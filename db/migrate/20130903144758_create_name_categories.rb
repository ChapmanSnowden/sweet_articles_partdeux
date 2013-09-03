class CreateNameCategories < ActiveRecord::Migration
  def up 
    execute "create table name_categories as select distinct category from articles;"
  end
  def down
    drop_table :name_categories
  end
end
