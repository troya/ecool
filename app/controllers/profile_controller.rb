class ProfileController < ApplicationController
  before_filter :login_required, :only=>[edit] 
  def show
     @profile = Profile.first(:conditions => {:user_id => params[:id]})
  end

  def edit
    @profile = Profile.first(:conditions => {:user_id => params[:id]})
  end

  def list
  end

end
