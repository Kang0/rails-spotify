class AlbumsController < ApplicationController

    def index
        @recent_review = Review.last(4)

        if params[:artist]
            @album = Album.all.collect do |album|
                if album.artist.name.downcase.include?(params[:artist].downcase)
                    album
                end
            end.compact
        else
            @album = Album.all
        end

        if @album.empty?
            flash.now[:alert] = "Sorry, there are no matches for that artist."
        end
    end

    def show
        @album = Album.find(params[:id])
    end

end