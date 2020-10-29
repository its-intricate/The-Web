require 'sinatra/base'
require 'player'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    erb :play
  end

  post '/names' do
    $p1 = Player.new(params[:p1])
    $p2 = Player.new(params[:p2])
    redirect '/play'
  end

  get '/attack' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    erb :attack
  end



  run! if app_file == $0
end
