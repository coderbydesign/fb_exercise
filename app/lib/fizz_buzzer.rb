module	FizzBuzzer
	def self.fizzer(n)
		int_check(n)

		if n % 15 == 0
			"FizzBuzz"
		elsif n % 5 == 0
			"Buzz"
		elsif n % 3 == 0
			"Fizz"
		else
			""
		end
	end

	def self.int_check(n)
		raise "Invalid input" unless n.is_a? Integer
	end
end
