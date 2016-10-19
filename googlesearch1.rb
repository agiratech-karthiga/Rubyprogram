require 'mechanize'
class Google
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
Google.search