class CommentsController < ApplicationController

    def create
        @comment = Comment.create(comments_params)
        @review = Review.find(params[:review_id])
        binding.pry
        redirect_to album_review_path(@review.album, @review)
    end

    private

    def comments_params
        params.require(:comment).permit(:review_id, :content)
    end

end