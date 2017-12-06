class PoolsController < ApplicationController
  def index
    @pool = Pool.new
    @pools = Pool.all

    @pools_gmap = Pool.where.not(latitude: nil, longitude: nil)

    @markers = @pools_gmap.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def new
  end

  def create
    @pool = Pool.create(pool_params)
    redirect_to pools_path
  end

  def edit
    @pool = Pool.find(params[:id])
  end

  def update
    @pool = Pool.find(params[:id])
    @pool.update(pool_params)
    redirect_to pools_path
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    redirect_to pools_path
  end


  private
  def pool_params
    params.require(:pool).permit(:name,
                                 :address,
                                 :opening_times,
                                 :size,
                                 :open,
                                 :price,
                                 :phone,
                                 :metro,
                                 :lane,
                                 :treatment)
  end
end

