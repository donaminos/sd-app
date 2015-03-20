class Lesson < ActiveRecord::Base
	belongs_to :course
  acts_as_list scope: :course
	
  validates_presence_of :title, :description, :course_id, :slug

	extend FriendlyId
  	friendly_id :slug_candidates, use: [:slugged, :history]

  def slug_candidates
   [
     :title
   ]
	end

  def should_generate_new_friendly_id?
    title_changed? || !self.slug.present?
  end
end
