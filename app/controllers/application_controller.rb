class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 # Verify that controller actions are authorized. Optional, but good.
  #after_filter :verify_authorized,  except: :index
  #after_filter :verify_policy_scoped, only: :index

  #def after_sign_in_path_for(resource)
  #	courses_path
  #end

 # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  #rescue_from ActiveRecord::RecordNotFound, with: :record_not_exists
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :firstname << :lastname << :image
  end
  
  def user_not_authorized(exception)

    policy_name = exception.policy.class.to_s
    flash[:alert] = "Hmm! something went wrong."
    redirect_to (request.referrer || root_path)
  end

  def record_not_exists(exception)
    flash[:alert] = 'Hmm! something went wrong.'
    redirect_to (request.referrer || root_path)
  end
end
