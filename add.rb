def add(numbers)
return 0 if numbers.empty?
delimiter = ",|\\n"

if numbers.start_with?("//")
  delimiter = numbers[2]
  numbers = numbers.split("\n")[1]
end
  
numbers = numbers.split(/#{delimiter}/)



  sum = 0
  numbers.each do |num|
    num = num.to_i 
    sum += num
  end
  sum
end

