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

    if ![1, 2, 3, 4, 5].include?(operator)
      say "I think you made a wrong input, please try it again."
      next
    end

    if operator == 5
      say "Bye bye!"
      break
    else

      say "Please input your first number:"
      number_1 = gets.chomp.to_f

      say "Please input your second number:"
      number_2 = gets.chomp.to_f

      if operator == 1
        result = number_1 + number_2

      elsif operator == 2
        result = number_1 - number_2

      elsif operator == 3
        result = number_1 * number_2

      elsif operator == 4
        if number_2 == 0
          say "Divisor can not be 0, please input your numbers again."
          next  
        else
          result = number_1 / number_2
        end
      end
        
      puts "=> Result is #{result}"
      puts
    end
  end
end

# main process
run_calculator
