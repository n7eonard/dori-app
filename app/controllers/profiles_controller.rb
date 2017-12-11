class ProfilesController < ApplicationController

  def show
    @user = current_user
    @program = Program.where(:user_id == current_user).last
  end
end
