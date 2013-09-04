class JoinArticleIdAndTagIds < ActiveRecord::Migration
  def change
    arts = Article.all
    tagname = TagLabel.all
    arts.each do |d|
     tagname.each do |t|
       if d.tags.split(", ").include?(t.unique_tags)
         ArticleTag.create(articles_id: d.id, tags_id: t.id)
       end
     end
   end
  end
end

