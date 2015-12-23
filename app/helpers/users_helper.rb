module UsersHelper
	def user_has_posts?(user)		
		user.posts.count > 0
	end

	def user_has_comments?(user)
		user.comments.count > 0
	end

	def user_has_favorites?(user)
		user.favorites.count > 0
	end

#Why doesn't the below work as a DRYer way to implement the above? How could I do this?
=begin
	def user_has_object?(user, object)
		user.object.count > 0
	end
=end
end
