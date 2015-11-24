require 'sinatra'
require_relative('./lib/blog.rb')
require_relative('./lib/post.rb')
enable(:sessions)


blog = Blog.new
blog.add_post("Hello", "This is the first post")
blog.add_post("Bye", "This is the second post")

get '/posts' do
  @blog = joshs_todos
  @hours_needed = @todos.calculate_timed
  erb :todos, :layout :sinatra_layout
end

get '/login' do 
  erb :login
end


get '/profile' do 
    correct_login = valid_users.include?({user:params[:username], pass:params[:password]})
    correct_login ? @message = "Right credentials" : @message = "Wrong credentials"
    erb :profile
end