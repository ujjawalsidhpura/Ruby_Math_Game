class Player
  @@num_of_players = 0
  
  attr_accessor :life
  attr_reader :player_num
  
  def initialize
   @@num_of_players += 1
   @life = 3
   @player_num = "Player #{@@num_of_players}"
  end
  
  end