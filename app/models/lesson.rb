class Lesson < ActiveRecord::Base
	belongs_to :course
  acts_as_list scope: :course
	
  validates_presence_of :title, :description, :course_id

	extend FriendlyId
  	friendly_id :slug_candidates, use: :slugged

  	def slug_candidates
    [
      :title,
      [:course, :title],
      [:course, :title, :created_at]
      
    ]
	end
end
