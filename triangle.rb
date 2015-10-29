require_relative "shape"
require_relative "line"

class Triangle < Shape

	def initialize(x, y, w, h, color)
		super(w, h)
		@x = x
		@y = y
		@w = w
		@h = h
		@color = color
		add_line(create_left)
		add_line(create_right)
		add_line(create_bottom)
	end

	def draw
		draw_stroke
	end

	def create_left
		Line.new(@x, @y + @h, @x + @w / 2, @y, @color)
	end

	def create_right
		Line.new(@x + @w, @y + @h, @x + @w / 2, @y, @color)
	end

	def create_bottom
		Line.new(@x, @y + @h, @x + @w, @y + @h, @color)
	end

	def create_center_left
		(1..@w / 2).each do |n|
			
		end
	end

end