class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:admin]
  def admin
    if current_user.admin
      @users = User.all
    else
      redirect_to root_path, alert: 'You are not admin.'
    end
  end

  def def_admin
    @user = User.find(params[:id])
    @user.admin = !@user.admin
    @user.save
    redirect_to users_admin_path, notice: 'Changes saved.'
  end

end
