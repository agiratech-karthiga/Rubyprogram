require 'rmagick'
require 'chunky_png'
include Magick
#create a 100*100 red image
f=Image.new(100,100) {self.background color="red"}
f.display
exit




