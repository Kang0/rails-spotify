class ReviewsController < ApplicationController

    def index
        @album = Album.find(params[:album_id])
        @reviews = @album.reviews

        respond_to do |f|
            f.html {render :index}
            f.json {render json: @reviews, include: ['album', 'user']}
        end
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

            respond_to do |f|
                f.html {render :show}
                f.json {render json: @review, status: 201}
            end
            
        else
            respond_to do |f|
                f.html {render :new}
                f.json {render json: @review.errors.full_messages, status: 400}
            end
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

        respond_to do |f|
            f.html {render :show}
            f.json {render json: @review, include: ['comments', 'comments.user']}
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :recommend, :title, :user_id)
    end

end