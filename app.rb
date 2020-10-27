require 'sinatra'
set :session_secret, 'secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Shhh.. don't tell anyone!"
end

get '/pair' do
  "Hi Michael!"
end

get '/random-cat' do
  p params
  @random_name = params[:name]
  erb :index
end
