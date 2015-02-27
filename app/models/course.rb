class Course < ActiveRecord::Base
	has_many :lessons, -> { order("position ASC") }
  belongs_to :user
  
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  
  def slug_candidates
    [
      :title,
      [:title, :created_at]
      #[:title, :description],
      #[:title, :description, :created_at]
      
    ]
  end

end
