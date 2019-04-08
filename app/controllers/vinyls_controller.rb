class VinylsController < ApplicationController

    def create
        @spotify_album = RSpotify::Album.find(params[:album_id])
        
        @artist = Artist.find_or_create_by(name: @spotify_album.artists.first.name, genre: @spotify_album.artists.first.genres[0], image: @spotify_album.artists.first.images[0]["url"])
        @album = Album.find_or_create_by(name: @spotify_album.name, release_date: @spotify_album.release_date, number_of_tracks: @spotify_album.total_tracks, images: @spotify_album.images[0]["url"], artist: @artist)
        if @album.tracks.empty?
            @spotify_album.tracks.each do |track|
                @album.tracks.build(name: track.name, duration_ms: track.duration_ms, explicit: track.explicit, track_number: track.track_number).save
            end
        end
        
        current_user.vinyls.build(album: @album).save
        binding.pry
    end

end