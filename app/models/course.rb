class Course < ActiveRecord::Base
	has_many :lessons, -> { order("position ASC") }
  belongs_to :user
  belongs_to :level
  
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :history]

  
  def slug_candidates
    [
      :title
      #[:title, :created_at]
      #[:title, :description],
      #[:title, :description, :created_at]   
    ]
  end

  def should_generate_new_friendly_id
    title_chaged? || !self.slug.present?
    
  end

end
