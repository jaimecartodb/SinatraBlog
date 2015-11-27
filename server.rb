require 'sinatra'
require 'sinatra/reloader'
require_relative('lib/blog.rb')
require_relative('lib/post.rb')
enable(:sessions)

myBlog = Blog.new
myBlog.add_post(Post.new("Steady Rockers hit charts!", Time.now,"Reggae band Steady Rockers hits charts with 'Do The Steadie' EP (1-1-2015)"))
myBlog.add_post(Post.new("Madness new album", Time.now,"Nutty Boys new album 'Dangermen Sessions' now on shops (1-1-2014)"))
myBlog.add_post(Post.new("Madrid Ska Band 'Sally Brown' needs bassist", Time.now, "Sally Brown looks for experimented bassist (10-8-2015)"))
myBlog.add_post(Post.new("The Aggrolites incoming shows",Time.now,"L.A. based band The Aggrolites Madrid gig soon (1-8-2014)"))
myBlog.add_post(Post.new("New Hepcat videoclip", Time.now,"Hepcat video 'No Worries' now available at Youtube (20-9-2015)"))
myBlog.add_post(Post.new("Marley's son Damien releases new roots album", Time.now, "I don't like roots rock reggae, don't care about this (28-12-2013)"))

###should I put this logic here or where should i create all the objects?

get '/blog' do
	@posts = myBlog.sort_all_posts
	@posts = myBlog.show 
  erb :blogpost
end

get '/post_with_details/:post' do
	@posts = myBlog.show
	post_id = params[:post].to_i
	@post = @posts[post_id]
	erb :show_post_details
end

get '/new_post' do
	erb :new_post
end

post '/create_post' do
	myBlog.add_post(Post.new(params[:post_title], Time.now, params[:post_text]))
	redirect('/blog')
end