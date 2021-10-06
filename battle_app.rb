require 'sinatra/base'
require "sinatra/reloader"
require './lib/player'

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
    @Player1 = $Player1
    @Player2 = $Player2
    @Player2.hit_points
    erb :play
  end

  get '/attack' do
    @Player1 = $Player1
    @Player2 = $Player2
    @Player1.attack(@Player2)
    @Player2.damage
    erb :attack
  end
end

