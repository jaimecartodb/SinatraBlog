require_relative './post.rb'
require 'pry'

class Blog

	attr_reader :posts
	def initialize
		@posts = []
	end

	def add_post post
		@posts << post
	end

	def sort_all_posts
		@posts.sort {|post1, post2| post2.date <=> post1.date}
	end

	def show
		@posts
	end

	def posts_print
		@posts.each do |item|
			puts item.title
			puts item.date
		end
	end

end



##Your Blog class should have a #posts method that returns an array. That array should contain Post instances. With that array, you can loop over it in a view to show each post's title and date.

