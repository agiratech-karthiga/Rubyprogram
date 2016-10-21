module Stringpdf
  class Stringoccurence
    attr_accessor :elem, :a, :b
    def initialize elem,a,b
      @elem=elem
      @a=a
      @b=b
    end
    def self.number1
		 h=Hash.new
      f=File.open("/home/agira/Rubypgm/string.pdf","r")
         f.each_line{|line|
          words=line.split    #words=char.split
          words.each{|w|
            if h.has_key?(w)
            h[w]=h[w]+1
            else
            h[w]=1
            end
           }
           }
           h.sort{|a,b| a[1]<=>b[1]}.each {|elem|
         puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
         }
    end 
  end     
end

Stringpdf::Stringoccurence.number1
