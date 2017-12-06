class PoolsController < ApplicationController
  def index
    @pool = Pool.new
    @pools = Pool.all
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

