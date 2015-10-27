100.times do
post = Post.new
post.title = Faker::Company.buzzword
post.content = Faker::Lorem.paragraph(10)
post.user_id = User.order("RANDOM()").first.id
post.save	
end

20.times do
comment = Comment.new
comment.user_id = User.order("RANDOM()").first.id
comment.save
end