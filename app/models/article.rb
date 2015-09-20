class Article < ActiveRecord::Base
    belongs_to :user
    belongs_to :company
    has_many :proposals
    has_many :article_keywords
end
