def check_number_1
	begin
		puts "Please enter the first number"
              num1 = gets.chomp.to_i
        end while ! (num1.class == Fixnum)
        num1
end

puts "Welcome "