require './game'
require './question'
require './player'

player1 = Player.new
player2 = Player.new

puts "---Welcome to the game---"

game = Game.new(player1,player2)

while game.players[0].life > 0 && 
      game.players[1].life > 0   do

  question = Question.new
  puts "#{game.current_player.player_num} : 
  #{question.question_generator}"
  answer = question.answer

  player_input = gets.chomp.to_i

  if(player_input != answer)
    game.remove_life
  end

  game.life_left

  game.change_player

end