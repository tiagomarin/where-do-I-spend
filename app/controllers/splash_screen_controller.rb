class SplashScreenController < ApplicationController
  before_action :check_signed_in

  def index; end

  private

  def check_signed_in
    redirect_to user_groups_path(current_user) if signed_in?
  end
end