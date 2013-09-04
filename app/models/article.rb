class Article < ActiveRecord::Base
  before_create :set_url
  has_many :tag_labels, through: :article_tags
  belongs_to :category
  
  
  private
  def set_url
    time = Time.now
    self.url = "articles/#{time.month}/#{time.day}/#{time.year}/#{self.title.downcase.gsub(' ', '-')}"
  end
end
