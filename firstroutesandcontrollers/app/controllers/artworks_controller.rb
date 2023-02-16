class ArtworksController < ApplicationController

  def index

    @artworks = Artwork.all
    render json: @artworks

  end

  def create
    artwork = Artwork.new(params.require(:artwork).permit(:title,:artist_id, :image_url))
    if artwork.save
        render json: artwork
    else
        render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artwork.update!(artwork_params)
    render json: @artwork
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.delete
    render json: @artwork
  end

  def artwork_params
    params.require(:artwork).permit(:title,:artist_id,:image_url)
  end
end