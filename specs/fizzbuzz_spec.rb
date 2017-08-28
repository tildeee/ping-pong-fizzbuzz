require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/fizzbuzz'

describe "FizzBuzz" do
  it "should return FizzBuzz comprehensively from 1-100" do
    output = []

    (1..100).each do |number|
      output << FizzBuzz.go(number)
    end

    output.must_equal [
      1, 2, "Fizz", 4, "Buzz",
      "Fizz", 7, 8, "Fizz", "Buzz",
      11, "Fizz", 13, 14, "FizzBuzz",
      16, 17, "Fizz", 19, "Buzz",
      "Fizz", 22, 23, "Fizz", "Buzz",
      26, "Fizz", 28, 29, "FizzBuzz",
      31, 32, "Fizz", 34, "Buzz",
      "Fizz", 37, 38, "Fizz", "Buzz",
      41, "Fizz", 43, 44, "FizzBuzz",
      46, 47, "Fizz", 49, "Buzz",
      "Fizz", 52, 53, "Fizz", "Buzz",
      56, "Fizz", 58, 59, "FizzBuzz",
      61, 62, "Fizz", 64, "Buzz",
      "Fizz", 67, 68, "Fizz", "Buzz",
      71, "Fizz", 73, 74, "FizzBuzz",
      76, 77, "Fizz", 79, "Buzz",
      "Fizz", 82, 83, "Fizz", "Buzz",
      86, "Fizz", 88, 89, "FizzBuzz",
      91, 92, "Fizz", 94, "Buzz",
      "Fizz", 97, 98, "Fizz", "Buzz"]

  end


  it "should return 'Fizz' if given a multiple of 3" do
    inputs = [3, 6, 9, 72]

    inputs.each do |input|
      output = FizzBuzz.go(input)
      output.must_equal 'Fizz'
    end
  end

  it "should return 'Buzz' if given a multiple of 5" do
    inputs = [5, 10, 20, 25, 70]

    inputs.each do |input|
      output = FizzBuzz.go(input)
      output.must_equal 'Buzz'
    end
  end

  it "should return the number if not 3, 5, or 15" do
    inputs = [1, 2, 4, 7, 11]

    inputs.each do |input|
      output = FizzBuzz.go(input)
      output.must_equal input
    end
  end

  it "should return 'FizzBuzz' if given a multiple of both 3 and 5" do
    inputs = [15, 30, 45]

    inputs.each do |input|
      output = FizzBuzz.go(input)
      output.must_equal "FizzBuzz"
    end
  end


end
