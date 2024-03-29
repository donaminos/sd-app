class Level < ActiveRecord::Base
	has_many :courses

	has_attached_file :image, :styles => { :medium => "640x220", :thumb => "440x220" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :history]

  
  def slug_candidates
    [
      :code
    ]
  end

    def should_generate_new_friendly_id?
      code_changed? || !self.slug.present?
  end
end
