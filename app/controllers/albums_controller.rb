class AlbumsController < ApplicationController

    def index
        @album = Album.all
        @reviews = Review.all
    end

    def show
        @album = Album.find(params[:id])
    end

end