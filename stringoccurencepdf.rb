class Stringoccurence
	def self.number
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
Stringoccurence.number
