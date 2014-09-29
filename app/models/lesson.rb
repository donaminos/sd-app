class Lesson < ActiveRecord::Base
	belongs_to :course
	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :course_id


	extend FriendlyId
  	friendly_id :slug_candidates, use: :slugged

  	def slug_candidates
    [
      :title,
      [:course, :title],
      [:course, :title, :description],
      [:course, :title, :description, :created_at]
      
    ]
	end
end
