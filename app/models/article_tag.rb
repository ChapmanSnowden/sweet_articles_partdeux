class ArticleTag < ActiveRecord::Base
  has_many :articles
  has_many :tag_labels
end
