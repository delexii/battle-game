require 'sinatra/base'
require "sinatra/reloader"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/testing' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:Player1]
    @player2 = params[:Player2]
    erb :play
  end
end

