require "game"
require "player"

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe "#attack" do
    it "damages 10 points off a player" do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end

  describe "#player1" do
    it "shows a player 1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "shows a player 2" do
      expect(game.player2).to eq player2
    end
  end

  describe "#current_turn" do
    it "starts at player 1" do
      expect(game.current_turn).to eq player1
    end
  end

  describe "#switch_turns" do
    it "switches the turn" do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end
end
