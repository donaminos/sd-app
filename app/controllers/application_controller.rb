class ApplicationController < ActionController::Base
   include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #def after_sign_in_path_for(resource)
  #	courses_path
  #end

 rescue_from Pundit::NotAuthorizedError do |exception|
	
     redirect_to root_url if exception.subject.to_s.include? "Course"
     redirect_to articles_path if exception.subject.to_s.include? "Article"
 
  end

end
