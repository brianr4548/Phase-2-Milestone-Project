class CommentsController < ApplicationController
before_action :find_commentable, only: :create
before_action :not_logged_in, only: :new

    # def index
    # end
    
    def show 
        @comment = Comment.find(params[:id])
    end
    
    def new 
        @comment = Comment.new
    end

    def create
        # byebug
        @review = Review.find(comments_params[:review_id].to_i)
        @comment = @review.comments.new(comments_params)

        respond_to do |format|
            if @comment.save
                format.html {redirect_to @review, notice: "Comment was successfully created."}
                # redirect_to @review, notice: "Comment was successfully created."
                # redirect_to restaurants_path
                else
                flash[:errors] = @review.errors.full_messages
                redirect_to @review
                end 
            end
        end
    end
    
    private

    def comments_params
        params.require(:comment).permit(:user_id, :review_id, :reply)
    end

    def find_commentable
        if params[:comment_id]
          @commentable = Comment.find_by_id(params[:comment_id]) 
        elsif params[:review_id]
          @commentable = Review.find_by_id(params[:review_id])
        end

end
