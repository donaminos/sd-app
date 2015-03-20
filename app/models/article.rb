class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
  
  acts_as_taggable
  acts_as_taggable_on :tags

  has_attached_file :image, :styles => { :medium => "640x220", :thumb => "440x220" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
  validates_presence_of :title, :slug
	
  paginates_per 10

  belongs_to :user


  def should_generate_new_friendly_id?
      title_changed? || !self.slug.present?
  end


end
