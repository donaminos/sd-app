class WelcomeController < ApplicationController
  
  def index

    if user_signed_in?
    	redirect_to :controller=>'courses', :action => 'index'
	 end
  end

  def about
  end

  def terms
  end
end
