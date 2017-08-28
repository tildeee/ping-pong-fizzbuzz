class FizzBuzz
  def self.go(value)
    if value % 5 == 0 && value % 3 == 0
      return "FizzBuzz"
    elsif value % 3 == 0
      return "Fizz"
    elsif value % 5 == 0
      return "Buzz"
    else
      return value
    end
  end
end
