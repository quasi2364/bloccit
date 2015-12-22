class FavoriteMailer < ApplicationMailer
	default from: "dlevin64@gmail.com"

	def new_comment(user, post, comment)
		headers["Message-ID"] = "<comments/#{comment.id}@bloccit.com>"
		headers["In-Reply_To"] = "<post/#{post.id}@bloccit.com>"
		headers["References"] = "<post/#{post.id}@bloccit.com>"

		@user = user
		@post = post
		@comment = comment

		mail(to: "dlevin64@gmail.com", subject: "New comment on #{post.title}")
	end

	def new_post(user, post)
		@user = user
		@post = post

		mail(to: user.email, cc: 'dlevin64@gmail.com', subject: "New favorite on #{post.title}")
	end
end
