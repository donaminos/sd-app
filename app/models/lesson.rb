class Lesson < ActiveRecord::Base
	belongs_to :course
	validates_presence_of :title
	validates_presence_of :description
	validates_presence_of :course_id
end
