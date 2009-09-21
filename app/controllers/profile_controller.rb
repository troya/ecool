class ProfileController < ApplicationController
  def show
     @profile = Profile.first(:conditions => {:user_id => params[:id]})
  end

  def edit
    @profile = Profile.first(:conditions => {:user_id => params[:id]})
  end

  def list
  end

end
