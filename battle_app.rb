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
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect "/play"
  end

  get "/play" do
    @game = $game
    erb :play
  end

  get "/attack" do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post "/switch-turns" do
    $game.switch_turns
    redirect("/play")
  end
end
