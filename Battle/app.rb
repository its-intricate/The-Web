require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @p1 = $p1
    @p2= $p2
    erb :play
  end

  post '/names' do
    $p1 = Player.new(params[:p1])
    $p2 = Player.new(params[:p2])
    redirect '/play'
  end

  get '/attack' do
    @p1 = $p1
    @p2 = $p2
    Game.new.attack(@p2)
    erb :attack
  end



  run! if app_file == $0
end
