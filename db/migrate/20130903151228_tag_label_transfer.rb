class TagLabelTransfer < ActiveRecord::Migration
  def up
    tag_names = []
    all_articles = Article.all
    all_articles.each do |key|
      tag_names << key.tags
    end

    tag_names.flatten!
    tag_names = tag_names.split(",").join(", ")
    tag_names.gsub!(/ ,/, "")
    tag_names = tag_names.split(", ").uniq!

    tag_names.each do |tag|
      TagLabel.create(unique_tags: tag)
    end
  end
end
