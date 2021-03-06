class Game
  attr_reader :current_turn, :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = player1
  end

  def attack(name)
    name.damage
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    players.select { |player| player != the_player }.first
  end

  private

  attr_reader :players
end
