class Fizzbuzz
  attr_accessor :fizzbuzz_array

  def initialize
    @fizzbuzz_array = []
  end

  def divisible_by? num1, num2
    (num1 % num2).zero?
  end

  def fizzbuzz_loop(start_num, end_num)
    (start_num..end_num).each do |i|
      if divisible_by?(i,3) && divisible_by?(i,5)
        @fizzbuzz_array.push "FizzBuzz"
      elsif divisible_by?(i,5)
        @fizzbuzz_array.push "Buzz"
      elsif divisible_by?(i,3)
        @fizzbuzz_array.push "Fizz"
      else
      @fizzbuzz_array.push i
      end
    end
    @fizzbuzz_array
  end

  fb = Fizzbuzz.new
  fb.fizzbuzz_loop(1,15)

end


# def divisible_by_three? num
#   # if num % 3 == 0
#   #   true
#   # else
#   #   false
#   # end
#
#   # num % 3 == 0
#
#   (num % 3).zero?
# end
#
# def divisible_by_five? num
#   (num % 5).zero?
# end
