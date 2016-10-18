class Sum
def sumdigit number
sum=0
while number>0 do
sum=sum+(number%10)
number=number/10
end
return sum
end
end
s=Sum.new
print "enter the number:"
num=gets.chop.to_i
p "sum of the digits is #{s.sumdigit num}"

