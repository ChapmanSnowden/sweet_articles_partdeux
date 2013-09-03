class CreateTagAndArticles < ActiveRecord::Migration
  def change
    create_table :article_tags do |t|
      t.references :articles
      t.references :tags 
    end
  end
end
