class SessionsController < ApplicationController
  def new
    render 'sessions/new'
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end 
  end 

  def destroy
    if !session[:name]
      session[:name]
    else 
      session.delete :name
    end 
  end

end
