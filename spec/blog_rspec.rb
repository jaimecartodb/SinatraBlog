require './spec_helper'

describe Blog do
	describe "add_post" do
		it "adds a new post to the general blog" do
			@blog = Blog.new
			@blog.add_post(Post.new("hello", 15/01/02, "this is a cool entrance")
			expect(@blog.posts_print).to_eq ("hello")
		end
	end
end