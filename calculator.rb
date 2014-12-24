# calculator.rb
#
# Tealeaf Course 1 -- Lesson 1 Assignment
# 24/12/2014

# printout a message to console
def say(msg)
  puts "#{msg}"
end

# the calculator method
def run_calculator
  while 1==1
    say "Please choose your Calculator Command:"
    say "1) add 2) subtract 3) multiply 4) divide 5) exit"
    operator = gets.chomp.to_i

    if operator == 5
      say "Bye bye!"
      break
    else

      say "Please input your first number:"
      num1 = gets.chomp

      say "Please input your second number:"
      num2 = gets.chomp

      if operator == 1
        result = num1.to_f + num2.to_f

      elsif operator == 2
        result = num1.to_f - num2.to_f

      elsif operator == 3
        result = num1.to_f * num2.to_f

      elsif operator == 4
        if num2.to_f == 0
          say "Divisor can not be 0, please input your numbers again."
          next  
        else
          result = num1.to_f / num2.to_f
        end
      end

      puts "=> Result is #{result}"
      puts
    end
  end
end

# main process
run_calculator
