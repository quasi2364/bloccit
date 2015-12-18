class Rating < ActiveRecord::Base
	has_many :posts
	has_many :topics
	enum severity: [:PG, :PG13, :R]
end
