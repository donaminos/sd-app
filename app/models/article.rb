class Article < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged
  
  has_attached_file :image, :styles => { :medium => "640x220", :thumb => "440x220" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
  validates_presence_of :title, :slug
	
  paginates_per 10

  belongs_to :user



  	def slug_candidates
    [
      :title,
      [:title, :created_at]     
    ]
  	end
end
