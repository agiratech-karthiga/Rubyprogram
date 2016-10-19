require 'rubygems'
require 'mechanize'

mechanize=Mechanize.new
page=mechanize.get('http://www.agiratech.com/')
puts page.at('.small h3') #h3 element returns first matching node which is in element
puts page.uri
puts page.title 
puts page.content