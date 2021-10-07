require "sinatra/base"
require "sinatra/reloader"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/testing" do
    "Testing infrastructure working!"
  end

  get "/" do
    erb :index
  end

  post "/names" do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player1
    @player2 = $player2
    erb :play
  end

  get "/attack" do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb :attack
  end
end
