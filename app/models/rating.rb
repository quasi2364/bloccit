class Rating < ActiveRecord::Base
	has_many :posts
	has_many :topics
	enum severity: [:PG, :PG13, :R]

	def self.update_rating(rating_string)

	end
end
