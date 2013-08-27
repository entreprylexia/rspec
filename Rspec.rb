class FizzBuzz
	def fizzit number 
		return 'FizzBuzz' if is_divisible_by_fifteen? number 
		return 'Fizz' if is_divisible_by_tree? number 
		return 'Buzz' if is_divisible_by_five? number 
		return number 
end 


	def is_divisible_by_tree? number
		divisible_by number, 3
	end 

	def is_divisible_by_five? number
		divisible_by number, 5
	end 

	def is_divisible_by_fifteen? number
		divisible_by(number, 15)
	end 

private #in this particual case it wouldn't even have a code smell
	def divisible_by number, divisor
		number % divisor == 0
	end 
end 

counter = 1

for counter in 1..100
	if 
		counter % 3 == 0 && counter % 5 == 0
		puts "FizzBuzz"
	elsif
        counter % 5 == 0
        puts "Buzz"
	elsif
		counter % 3 == 0
	    puts "Fizz"
    else 
        puts counter
	end

	counter = counter + 1
end