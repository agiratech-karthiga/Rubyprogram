class Replace
	attr_accessor :filtered_data
	def change
data = File.read("/home/agira/Rubypgm/replace.txt") #open&readfile
filtered_data = data.gsub("audience", "play") #string substitution
File.open("/home/agira/Rubypgm/asecond1.txt", "w") do |f|
  f.write(filtered_data) #write data in file
  #puts filtered_data
end
end
end
r=Replace.new
r.change

