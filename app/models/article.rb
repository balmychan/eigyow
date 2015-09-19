class Article < ActiveRecord::Base
    belongs_to :user
    belongs_to :company
    has_many :proposals
end
