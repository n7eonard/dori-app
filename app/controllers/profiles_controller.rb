class ProfilesController < ApplicationController
  def show
    @user = current_user
    @geocoder_result = request.location

    @program = Program.where(:user_id == current_user).last
    @pools = Pool.where.not(latitude: nil, longitude: nil)
    @markers = @pools.map do |pool|
      {
        lat: pool.latitude,
        lng: pool.longitude,
        icon: ActionController::Base.helpers.asset_path('open.png')
      }
    end

    @geocoder_result.data['lat'] = 48.864848
    @geocoder_result.data['lng'] = 2.379853
    @markers << @geocoder_result.data
  end
end
