require './player'
require './question'

class Game
  attr_accessor :player1, :player2
  def initialize
    self.player1 = Player.new('1')
    self.player2 = Player.new('2')
  end

  def start
    players = [player1, player2]
    current_player = players[0] ######################TO INVERSE PLAYERS LATER!!!!!!!!!
    other_player = players[1]
    
    puts 'Starting game...'
    while (current_player.lives > 0 && other_player.lives > 0)
      question = Question.new
      puts "Player #{current_player.name}: #{question.addition}"

      answer = gets.chomp.to_i

      if question.validate?(answer)
        puts "Player #{current_player.name}: YES! You are correct"
      else
        puts "Player #{current_player.name}: Seriously? No!"
        current_player.lose_life
      end

      puts "P#{current_player.name}: #{current_player.lives}/3 vs P#{other_player.name}: #{other_player.lives}/3"
    end
    
  end

  def round
  end

  def end
    puts "PLAYER???? wins with a score ???/3"
    puts '----- GAME OVER -----'
  end

end