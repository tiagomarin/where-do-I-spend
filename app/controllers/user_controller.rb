class UserController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[show edit update destroy]

  def new
    @user = User.new
  end

  def destroy
    @user.destroy
  end

  # GET /users/1/edit
  def edit; end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_url(@user), notice: 'User was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

    # PATCH/PUT /users/1 or /users/1.json
    def update
      if @user.update(user_params)
        redirect_to user_url(@user), notice: 'User was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

  private

  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
