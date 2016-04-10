class Book < ActiveRecord::Base
    has_many :bookposts    
    validates :name, presence: true, length: { maximum: 50 }
    validates :content, presence: true
    validates :tag, presence: true
end
