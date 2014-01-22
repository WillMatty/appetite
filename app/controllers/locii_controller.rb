class LociiController < ApplicationController
  def index
    @locii = Locus.all
  end

  def new
    @locus = Locus.new
  end

  def create
    @locus = Locus.new(locus_params)

    if @locus.save
      flash[:success] = "You submitted a new place!"

      redirect_to root_path
    else
      render 'new'
    end

  end

  private

  def locus_params
    params.require(:locus).permit(:place, :address, :lat, :long)
  end
end
