require 'spreadsheet'
class Sheet
	def work
       workbook = Spreadsheet.open'/home/agira/Rubypgm/mark.xls'
       a=Hash.new ("row[1]=>row[2]")
       sheet1 = workbook.worksheet 0
       sheet1.each do |row|
           puts "#{row[0]}  #{row[1]}  #{row[2]}"
             def largest_hash_key()
             max=a.values.max
             Hash[a.select{|k,v| v==max}]
              puts max
            end
        end
    end
end
s=Sheet.new
s.work