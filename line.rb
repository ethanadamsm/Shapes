require "gosu"

class Line

	attr_reader :x1, :x2, :y1, :y2 

	def initialize(x1, y1, x2, y2, color)
		@x1 = x1 
		@x2 = x2
		@y1 = y1 
		@y2 = y2
		@color = color
	end

	def draw
		Gosu.draw_line(@x1, @y1, @color, @x2, @y2, @color, 0)
	end

end