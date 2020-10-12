require './player'
require './question'

class Game
  attr_accessor :player1, :player2
  def initialize
    self.player1 = Player.new('Player 1')
    self.player2 = Player.new('Player 2')
  end

  def start
    puts 'Starting game...'
    players = [@player1, @player2]
    current_player = players[0] ######################TO INVERSE PLAYERS LATER!!!!!!!!!
    question = Question.new


    puts "#{current_player.name}: #{question.addition}"
    answer = gets.chomp.to_i
    puts question.validate?(answer)
  end

  def round
  end

  def end
    puts "PLAYER???? wins with a score ???/3"
    puts '----- GAME OVER -----'
  end

end