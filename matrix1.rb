require "matrix"
require 'pp'
class Matrix 
  attr_accessor :a ,:b                         
a = Matrix[ [1,2], [3,4]]# This is how you can define new matrix
#a.to_a.each {|r| puts r.inspect}
b = Matrix[ [4,3], [2,1]]
#b.to_a.each {|r| puts r.inspect}
pp a
pp b
c=a+b
d=a*b
pp "sum of the matrix is  #{c}"
pp "multiplication of the matrix is #{d}"
end