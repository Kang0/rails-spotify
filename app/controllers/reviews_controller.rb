class ReviewsController < ApplicationController

    def index
        @album = Album.find(params[:album_id])
        @reviews = @album.reviews
    end

    def new
        @album = Album.find(params[:album_id])
        @review = @album.reviews.build
    end

    def create
        @album = Album.find(params[:album_id])
        @vinyl = Vinyl.find_by(user_id: current_user.id, album_id: params[:album_id])
        @review = Review.new(
            content: params[:review][:content], 
            title: params[:review][:title], 
            rating: params[:review][:rating], 
            recommend: params[:review][:rating], 
            user_id: current_user.id, 
            album_id: params[:album_id], 
            vinyl_id: @vinyl.id
        )

        if @review.save
            @vinyl.rating = params[:review][:rating]
            @vinyl.save
            redirect_to album_review_path(@review.album, @review)
        else
            render :new
        end

        
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Album.find(params[:album_id]).reviews.find(params[:id])
        @vinyl = @review.album.vinyls.user(current_user.id).first
        @album = @review.album
        
        if @review.update(review_params) && @vinyl.update(rating: params[:review][:rating])
            redirect_to album_review_path(@review.album, @review)
        else
            render :edit
        end
    end

    def show
        @album = Album.find(params[:album_id])
        @review = @album.reviews.find(params[:id])
        @user = @review.user
        @comment = Comment.new
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :recommend, :title, :user_id)
    end

end