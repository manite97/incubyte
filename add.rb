def add(numbers)
return 0 if numbers.empty?
delimiter = ",|\\n"
numbers = numbers.split(/#{delimiter}/)


  sum = 0
  numbers.each do |num|
    num = num.to_i 
    sum += num
  end
  sum
end

