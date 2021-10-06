require 'sinatra/base'
require "sinatra/reloader"
require 'player'

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
    $Player1 = Player.new(params[:Player1_name])
    $Player2 = Player.new(params[:Player2_name])
    redirect '/play'
  end

  get '/play' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name
    erb :play
  end

  get '/attack' do
    @Player1_name = $Player1.name
    @Player2_name = $Player2.name
    erb :attack
  end
end

