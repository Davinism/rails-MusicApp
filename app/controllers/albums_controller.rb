class AlbumsController < ApplicationController
  def create
    @album = Album.new(band_id: params[:band_id],
                        album_type: params[:albums][:album_type],
                        name: params[:albums][:name])
    if @album.save!
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      redirect_to band_url(params[:band_id])
    end
  end

  def new
    render :new
  end

  def edit
    @album = Album.find_by(id: params[:id])
    render :edit
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update!(band_id: params[:band_id],
                        album_type: params[:albums][:album_type],
                        name: params[:albums][:name])
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      redirect_to band_url(params[:band_id])
    end
  end

  def destroy

  end

end
