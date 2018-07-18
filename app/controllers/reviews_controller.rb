class ReviewsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@review = @post.reviews.new(review_params)
		@review.user = current_user
		
		
		respond_to do |format|
			if @review.save
				format.html {redirect_to @post, notice: 'review was created successfully.' }
				format.json { render :show, status: :created, location: @post }
			else 
				format.html { redirect_to @post, alert: 'review was not saved successfully.'}
				format.json { render json: @review.errors, status: :unprocessable_entity }
			end
		end
	end
	def destroy
		@review = Review.find(params[:id])
		post = @review.post
		@review.destroy
		redirect_to post
	end

	private

	def review_params
		params.require(:review).permit(:user_id, :body)
	end
end
