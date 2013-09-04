class TransferCategoryTypeToNameCategories < ActiveRecord::Migration
  def change
    execute "INSERT INTO name_categories (category_type) SELECT DISTINCT category FROM articles"
    execute "UPDATE articles SET category_id = name_categories.id FROM name_categories WHERE articles.category = name_categories.category_type"
  end
end


