class Sum
	def initialize
		@sum
	end
end
class Sum1<Sum
    def sumdigit number
      sum=0
      num=Array.new { |num|  }
        until number <=0 do
	     sum=sum+(number%10)  #adding the digit
         number=number/10
        end
      return sum
    end
end
s=Sum1.new
print "enter the number:"
num=gets.chop.to_i
p "sum of the digits is #{s.sumdigit num}"