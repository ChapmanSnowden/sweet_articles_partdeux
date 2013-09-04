class TagLabel < ActiveRecord::Base
  has_many :articles, through: :article_tags
end
