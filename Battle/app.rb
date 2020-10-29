require 'sinatra/base'
require 'player'
require 'game'



class Battle < Sinatra::Base
  enable :sessions
  @p1 = $p1
  @p2 = $p2

  get '/' do
    erb :index
  end

  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    @p1_hp = $p1.hp
    @p2_hp = $p2.hp
    $game = Game.new($p1, $p2)
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
    $game.attack($p2)
    @p1_hp = $p1.hp
    @p2_hp = $p2.hp
    erb :attack
  end



  run! if app_file == $0
end
