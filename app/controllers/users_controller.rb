class UsersController < ApplicationController
  before_action :authenticate_user!

  def overview
  end

  def profile
    @user = current_user
  end
end
