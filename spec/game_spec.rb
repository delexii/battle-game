require "game"
require "player"

describe Game do
  let(:game) { Game.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe "#attack" do
    it "damages 10 points off a player" do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end
end
