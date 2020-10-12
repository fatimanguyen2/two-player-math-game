class Question
  attr_accessor :first_num, :second_num, :answer
  def initialize
    self.first_num = rand(10)
    self.second_num = rand(10)
    self.answer = @first_num + @second_num
  end

  def addition
    "What is #{first_num} + #{second_num}?"
  end

  def validate?(num)
    num == answer
  end

end
