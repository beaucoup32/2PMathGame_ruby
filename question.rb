class Question
  attr_accessor :question, :answer
   

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def get_question
    self.question = "Calcluate : #{@num1} + #{@num2} = ???"
  end

  def check_question(answer)
    (@answer == answer) ? true : false
  end

    

end




