require_relative "spec_helper"

describe "Fizzbuzz" do

  before(:each) do
    @fb = Fizzbuzz.new
  end

  it "should respond true if number is cleanly divisible by 15" do
    @fb.fizzbuzz_loop(1,15)

    expect(@fb).to respond_to(:fizzbuzz_loop)
    expect(@fb.fizzbuzz_array).to be_kind_of Array
    expect(@fb.fizzbuzz_array[4]).to eq "Buzz"
    expect(@fb.fizzbuzz_array[2]).to eq "Fizz"
    expect(@fb.fizzbuzz_array[-1]).to eq "FizzBuzz" # Or .last instead of [-1]
  end



  # xit "should respond true if number is cleanly divisible by 5" do
  #   expect(@fb.divisible_by?(10,5)).to be true
  # end
  #
  # xit "should respond true if number is cleanly divisible by 3" do
  #   expect(@fb.divisible_by?(6,3)).to be true
  # end

end
