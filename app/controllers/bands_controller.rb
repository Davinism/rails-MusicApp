class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(band_params)
    if @band.save!
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      redirect_to bands_url
    end
  end

  def new
    render :new
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def update
    @band = Band.find_by(id: params[:id])
    if @band.update!(band_params)
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      redirect_to bands_url
    end
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    if @band.destroy!
      flash.now[:notifications] = "Destroyed #{@band.name}!"
      redirect_to bands_url
    else
      flash.now[:errors] = "Can't destroy this artist/band!"
      redirect_to bands_url
    end
  end

  private
  def band_params
    params.require(:bands).permit(:name)
  end
end
