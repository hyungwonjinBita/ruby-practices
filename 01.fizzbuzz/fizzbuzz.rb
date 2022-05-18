(1..20).each do |num|
    if num % 15 == 0 then
        puts "FizzBuzz"
    elsif num % 3 == 0 then
        puts "Fizz"
    elsif num % 5 == 0
        puts "Buzz"
    else 
        puts num
    end
end
