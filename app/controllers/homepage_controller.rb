class HomepageController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :controller=>'projects', :action => 'index'
    end
  end
  
end
