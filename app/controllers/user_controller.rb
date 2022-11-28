class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[show edit update destroy]

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
