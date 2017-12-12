class ProfilesController < ApplicationController

  def show
    @user = current_user
    @program = Program.where(:user_id == current_user).last
    @pools = Pool.where.not(latitude: nil, longitude: nil)

    @markers = @pools.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude#,
      }
    end
  end
end
