require './player'
require 'colorize'

class Game

  attr_reader :players, :current_player, :life_left

  def initialize (player1, player2)
    @players = [player1, player2]
    @index = 0
    @current_player = @players[@index]
  end

  def remove_life
    @current_player.life -= 1
    
    if @current_player.life == 0
      puts "You lost, #{@current_player.player_num}".red
      puts "-- Game Over --".red
    end
  end

  def life_left
    puts "Remaining lives-- Player1 : #{@players[0].life}/3  Player2: #{@players[1].life}/3".green
  end

  def change_player
    @current_player == @players[0] ? 
      @current_player = @players[1] :
      @current_player = @players[0]
  end

end