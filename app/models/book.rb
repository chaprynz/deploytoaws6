class Book < ActiveRecord::Base
    has_many :bookposts    
    validates :title, presence: true, length: { maximum: 50 }
    validates :note, presence: true
    validates :header, presence: true
    validates :tag, presence: true
end
