class ReviewsController < ApplicationController

    def index
        @album = Album.find(params[:album_id])
        @reviews = @album.reviews
    end

    def new
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find_by(user_id: current_user.id)
    end

    def edit
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find(params[:id])
    end

    def update
        @review = Album.find(params[:album_id]).reviews.find(params[:id])
        @review.update(review_params)

        redirect_to album_review_path(@review.album, @review)
    end

    def show
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find(params[:id])
        @user = @review.user
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :recommend, :title, :user_id)
    end

end