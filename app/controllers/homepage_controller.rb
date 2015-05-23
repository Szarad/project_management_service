class HomepageController < ApplicationController
  def index
    if user_signed_in?
      redirected_to :controller => 'dashboard', :action => index 
    end  
  end
end
