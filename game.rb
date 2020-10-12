require './player'

class Game
  attr_accessor :player1, :player2
  def initialize
    self.player1 = Player.new('Player 1')
    self.player2 = Player.new('Player 2')
  end

  def start
    p player1
    p player2
    # puts 'Starting game...'
  end
end