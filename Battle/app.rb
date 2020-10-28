require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @p1 = session[:p1].inspect
    @p2 = session[:p2].inspect
    erb :play
  end

  post '/names' do
    session['p1'] = params['p1']
    session['p2'] = params['p2']
    redirect '/play'
  end

  get '/attack' do
    @p1 = session[:p1].inspect
    @p2 = session[:p2].inspect
    erb :attack
  end



  run! if app_file == $0
end
