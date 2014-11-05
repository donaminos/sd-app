class Article < ActiveRecord::Base
  
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

	validates_presence_of :title, :body, :slug

	
  paginates_per 10



  	def slug_candidates
    [
      :title,
      [:title, :created_at]     
    ]
  	end
end
