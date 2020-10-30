require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'



class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/names' do
    p1 = Player.new(params[:p1])
    p2 = Player.new(params[:p2])
    $game = Game.new(p1, p2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.p2)
    erb :attack
  end



  run! if app_file == $0
end
