require './game'

class Question

  attr_accessor :answer

  def initialize
    @answer = 0
  end

  def question_generator
    num1 = rand(1...20)
    num2 = rand(1...20)

    @answer = num1 + num2

    "What does #{num1} plus #{num2} equal?"
  end

end