class Level < ActiveRecord::Base
	has_many :courses

	has_attached_file :image, :styles => { :medium => "640x220", :thumb => "440x220" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end