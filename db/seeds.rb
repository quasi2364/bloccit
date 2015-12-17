include RandomData

5.times do
	user = User.create!(
		name: RandomData.random_name,
		email: RandomData.random_email,
		password: RandomData.random_sentence
	)
end
users = User.all

15.times do
	Topic.create!(
		name: RandomData.random_sentence,
		description: RandomData.random_paragraph
	)
end
topics = Topic.all

50.times do 
	Post.create!(
		user: users.sample,
		topic: topics.sample,
		title: RandomData.random_sentence,
		body: RandomData.random_paragraph
	)
end
posts = Post.all

100.times do 
Comment.create!(
	post: posts.sample,
	body: RandomData.random_paragraph,
	user: users.sample
)
end

25.times do
	Label.create!(
		name: RandomData.random_word
	)
end
labels = Label.all

100.times do
	Labeling.create!(
		label: labels.sample,
		labelable: topics.sample,
		labelable_type: "Topic"
	)
end

100.times do
	Labeling.create!(
		label_id: rand(0..24),
		labelable_id: rand(0..49),
		labelable_type: "Post"
	)
end

#Create an admin user
admin = User.create!(
	name: "Admin User",
	email: 'admin@example.com',
	password: 'password',
	role: 'admin'
)

#Create a member
member = User.create!(
	name: "Member User",
	email: 'member@example.com',
	password: "password"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Label.count} labels created"
puts "#{Labeling.count} labelings created"
