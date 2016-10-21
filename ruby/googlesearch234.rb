require 'mechanize'
module Google
	def initialize
		@page
		@search_result
	end
	def self.search
        mechanize=Mechanize.new { |agent|
        agent.user_agent_alias = 'Mac Safari'
        }

         page = mechanize.get('http://www.google.com/') do|page|
              search_result = page.form_with(:name => 'f') do |search|
                  search.q = 'agira technologies'
                end.submit

                search_result.links.each do |link|
                puts link.text
            end
        end
    end
end
class Pageload
	include Google
end
class Pageresult < Pageload
  #page=mechanize.get('http://www.agiratech.com/')
 #puts page.at('.small h3') #h3 element returns first matching node which is in element
 #puts page.uri
 #puts page.title 
 #puts page.content
end
p=Pageload.new
p.search