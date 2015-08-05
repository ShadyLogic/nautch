class RatingsController < ApplicationController

	def create
		new_rating = Rating.new(rater_id: params[:rater_id], 
				   target_id: params[:target_id], 
				   score: params[:score].to_i * 5)
		new_rating.save!
		redirect_to user_path(params[:target_id])
	end

	def update

	end

end
