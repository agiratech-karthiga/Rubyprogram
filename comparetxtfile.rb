class Comparefile
  def compare
      f1=File.open('/home/agira/Rubypgm/asecond.txt')
      f2=File.open('/home/agira/Rubypgm/asecond1.txt')
      file1lines=f1.readlines
      file2lines=f2.readlines
        file1lines.each do |e|
           if(!file2lines.include?(e))
             puts e
            end 
        end
    end 
end
c=Comparefile.new
c.compare