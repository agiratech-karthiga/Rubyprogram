class Number
   def self.string
      h=Hash.new
      f=File.open("/home/agira/Rubypgm/asecond1.txt","r")
      f.each_char{|line| #each char count
      # f.each_line{|line|----#each line count
      # f.each_byte{|line|----#each byte count
      words=line.split
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
Number.string
