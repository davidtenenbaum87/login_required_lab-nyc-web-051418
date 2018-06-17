class SessionsController < ApplicationController

  def new
  end

  def create
    if current_user.nil? || current_user.empty?
      redirect_to '/'
    else
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session.delete :name if current_user
    redirect_to '/login'
  end

end
