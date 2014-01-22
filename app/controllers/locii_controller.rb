class LociiController < ApplicationController
  def index
    # @locii = Locus.near("London")

    # If the user has searched fore a location
    # search near the param they typed in
    # else show all the places near London.
    # The param they've searched for is params[:location]

    if params[:location].present?
      @locii = Locus.near(:location)
    else
      @locii = Locus.near('London')
    end
  end

  def new
    @locus = Locus.new
  end

  def create
    @locus = Locus.new(locus_params)

    if @locus.save
      redirect_to root_path
    else
      render 'new'
    end

  end

  private

  def locus_params
    params.require(:locus).permit(:place, :address)
  end
end
