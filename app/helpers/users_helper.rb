module UsersHelper
	
	def user_has_object?(user, object)
		user.send("#{object}").count > 0
	end

end
