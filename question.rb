require './game'
require 'colorize'

class Question

  attr_accessor :answer

  def initialize
    @answer = 0
  end

  def question_generator
    num1 = rand(1...20)
    num2 = rand(1...20)

    @answer = num1 + num2

    puts "What does #{num1} plus #{num2} equal?".blue
  end

end