require_relative './post.rb'
require 'pry'

class Blog

	attr_reader :posts
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts << post
	end

	def posts_print
		@posts.each do |item|
			puts item.return_title
			puts item.return_date
		end
	end

end

post1 = Post.new("hello", "this is a cool entrance")
post2 = Post.new("bye", "and this is the second post")
blog = Blog.new
blog.add_post(post1)
blog.add_post(post2)
binding.pry
blog.posts_print


##Your Blog class should have a #posts method that returns an array. That array should contain Post instances. With that array, you can loop over it in a view to show each post's title and date.

