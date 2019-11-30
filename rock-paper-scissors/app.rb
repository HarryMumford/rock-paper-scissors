require 'sinatra'

class Game < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  get '/gameplay' do
    erb(:gameplay)
  end

  post '/names' do
    @player_1 = params[:player_1]
    session[:player_1] = @player_1
    redirect "/gameplay"
  end
end

