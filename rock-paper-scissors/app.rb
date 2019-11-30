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
    @user = params[:user]
    session[:user] = @user
    redirect "/gameplay"
  end
end

