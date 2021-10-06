require 'sinatra/base'
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/testing' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb :play
  end
end

