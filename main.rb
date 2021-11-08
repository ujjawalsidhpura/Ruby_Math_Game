require './game'
require './question'
require './player'
require 'colorize'

#Initialize Players
player1 = Player.new
player2 = Player.new

puts "---- Welcome to the game ----"

#Initalize game with two players created
game = Game.new(player1,player2)

while game.players[0].life > 0 && 
      game.players[1].life > 0   do

  #Print the question
  question = Question.new
  puts "#{game.current_player.player_num} : 
  #{question.question_generator}"

  #Define correct answer
  answer = question.answer

  #Take player's answer
  player_input = gets.chomp.to_i

  #Check player's answers against correct answer
  if(player_input != answer)
    puts "Wrong Answer !!".red
    game.remove_life
  end

  if(player_input == answer)
    puts "Correct Answer !!".green
  end

  #Display player stats
  game.life_left

  #Switch Player and Repeat the Loop 
  game.change_player

end