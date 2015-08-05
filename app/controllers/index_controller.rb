class IndexController < ApplicationController
	def welcome
		unless current_user.id.zero?
			@all_users = User.all
			@top_users = @all_users.dup.sort{ |a,b| b.score <=> a.score }.shift(5)
			@bottom_users = @all_users.dup.reverse.sort{ |a,b| b.score <=> a.score }.shift(5)

			@top_users.map! do |user|
				{object: user, score: user.score}
			end
			@bottom_users.map! do |user|
				{object: user, score: user.score}
			end
	  		# @all_ratings = Rating.all
	  		# @active_users = 
	  	end
	  	@error_message = params[:error_message]
	end
end
