class ProfilesController < ApplicationController
  def show
    @user = current_user
    @geocoder_result = request.location

    @program = Program.where(user: current_user).last
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
    @pool_near_me = Pool.near([@geocoder_result.data['lat'], @geocoder_result.data['lng']], 1.2)


    pools_array = []
    user_position = []
    user_position << @markers.last["lat"]
    user_position << @markers.last["lng"]

    @pool_near_me.each do |pool|
      one_pool = []
      one_pool << pool.latitude
      one_pool << pool.longitude
      pools_array << one_pool
    end

    how_far = Geocoder::Calculations.distance_between(user_position, pools_array[0])
    @distance_from_user =  how_far * 1.60934
  end
end
