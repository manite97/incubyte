def add(numbers)
return 0 if numbers.empty?
delimiter = ",|\\n"

if numbers.start_with?("//")
  delimiter = numbers[2]
  numbers = numbers.split("\n")[1]
end
  
numbers = numbers.split(/#{delimiter}/)


sum = 0
negatives = []
  
numbers.each do |num|
  num = num.to_i
  if num.negative?
    negatives << num
  else
  sum += num
  end
  
end
  raise "negative numbers not allowed #{negatives.join(", ")}" if !negatives.empty?
  sum
end

