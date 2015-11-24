require 'Date'

class Post
	def initialize(title, text)
		@title = title
		@date = Time.now
		@text = text
	end

	def return_title
		@title
	end

	def return_date
		@date
	end

	def return_last_date(post1, post2)
		if post1.return_date > post2.return_date ? post1 : post2
		end
	end

end