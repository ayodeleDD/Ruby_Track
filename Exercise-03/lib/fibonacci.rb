class Fibonacci
  def fibonacci_up_to(max)
    startValue, nextValue = 0, 1
    while startValue <= max
      yield startValue
      startValue, nextValue = nextValue, startValue+nextValue
    end
  end
end
