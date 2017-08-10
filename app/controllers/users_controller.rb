class UsersController < ApplicationController

  def index
    if session[:user_id]
      redirect_to '/login'
    end
  end

  def login
    user = User.find_by_email params[:email]
      if user.nil?
        flash[:errors] = ['User Not Found']
        redirect_to '/'
      else
        if user.authenticate params[:password]
          flash[:errors] = ['Succesfully Logged In']
          session[:user_id] = user.id
          redirect_to '/'
        else
          flash[:errors] = ['Incorrect Password']
          redirect_to '/'
        end
      end
    end

  def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]

    if user.save
      flash[:errors] = ['Success']
      session[:user_id] = user.id
      redirect_to '/'
    else
      flash[:errors] = user.errors.full_messages
      redirect_to '/'
    end
  end

  def logout
    reset_session
    redirect_to "/users"
  end
end
