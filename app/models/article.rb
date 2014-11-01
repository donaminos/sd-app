class Article < ActiveRecord::Base
	validates_presence_of :title
	validates_presence_of :body
	
  paginates_per 10

	extend FriendlyId
  	friendly_id :slug_candidates, use: :slugged

  	def slug_candidates
    [
      :title,
      [:title, :created_at]
      
    ]
  	end
end
