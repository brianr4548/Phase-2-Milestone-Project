class ReviewsController < ApplicationController

    before_action :not_logged_in, only: [:new]

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find(params[:id])
        @comment = Comment.new
    end
    
    def new 
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        # @review.user_id = current_user.id 
        
        if @review.valid? && current_user
            @review.save
            redirect_to restaurant_path(@review.restaurant)

        else
            flash[:errors] = @review.errors.full_messages
            render :new
        end 
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to restaurant_path(@review.restaurant)
        #not sure if this is the redirection we want yet
    end

    def review_params
        params.require(:review).permit(:user_id, :restaurant_id, :rating, :description)
    end

    
end