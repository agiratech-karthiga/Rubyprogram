require 'rmagick'
include Magick
module Showimage
	attr_accessor :cat

	def initialize
		@@cat=cat
	end
	def declare
		pixels=[]
	end 
end
class Addimage
	include Showimage
end
class Imagedisplay<Addimage
  def viewimage
      @@cat=ImageList.new('/home/agira/Downloads/agira.png')
      pixels=[]
      @@cat.each_pixel do |pixel,c,r|
	  pixels.push(pixel)
    end
  @@cat.display
end
end
c=Imagedisplay.new
c.viewimage