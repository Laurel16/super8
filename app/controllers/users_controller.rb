class UsersController < ApplicationController
  acts_as_voter


before_action :set_user, only: [ :edit, :update, :destroy]

  def index


  end


  def edit
  end

  def update
    redirect_to user_path
  end

  def new
  end



  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

end


