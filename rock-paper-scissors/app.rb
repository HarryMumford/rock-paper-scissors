require 'sinatra'

class Game < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  get '/gameplay' do
    erb(:gameplay)
  end

  get '/choose' do
    erb(:choose)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    session[:player_1] = @player_1
    session[:player_2] = @player_2
    redirect '/choose'
  end
end

