class ReviewsController < ApplicationController

    def index

    end

    def new
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find_by(user_id: current_user.id)
    end

    def update
        @review = Album.find(params[:album_id]).reviews.find_by(user_id: current_user.id)
        @review.update(review_params)

        redirect_to album_review_path(@review.album, @review)
    end

    def edit

    end

    def show
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find_by(user_id: current_user.id)
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :recommend, :user_id)
    end

end