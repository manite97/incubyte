def add(numbers)
return 0 if numbers.empty?
numbers = numbers.split(',')

  sum = 0
  numbers.each do |num|
    num = num.to_i 
    sum += num
  end
  sum
end

