class Micropost < ActiveRecord::Base
  attr_accessible :content 
  belongs_to :user

  validates_presence_of :content
  validates :content, length: { maximum: 140 }
  validates_presence_of :user_id

  default_scope order: 'microposts.created_at DESC'
end
