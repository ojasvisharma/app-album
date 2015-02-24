class UserController < ApplicationController
  def index
    @user = User.new
  end
  def create
    @user=User.new(params[:user])
   if @user.save
     UserMailer.deliver_registration_confirmation(@user)
   end
  end
  def show
    @user = User.find(params[:id])
  end

end
