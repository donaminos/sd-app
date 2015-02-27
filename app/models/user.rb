class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :courses
  has_many :articles

  has_attached_file :image,
  styles: { profile: "100x100#", nav: "30x30#" }, :default_url => "http://placehold.it/100&text=user"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def full_name
  	"#{self.firstname.capitalize} #{self.lastname.capitalize}" 	
  end

end
