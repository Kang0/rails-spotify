class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comments_params)
        @review = Review.find(params[:comment][:review_id])
        @comment.user_id = current_user.id
        
        if @comment.save
            render json: @comment, status: 201
        else
            redirect_to album_review_path(@review.album, @review)
        end
    end

    def index
        
    end

    private

    def comments_params
        params.require(:comment).permit(:review_id, :content)
    end

end