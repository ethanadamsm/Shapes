require_relative "shape"
require_relative "line"

class Rectangle < Shape

	def initialize(x, y, w, h, color, color2)
		super(w, h)
		@x = x
		@y = y
		@w = w
		@h = h
		@color = color
		@color2 = color2
		add_line(create_left)
		add_line(create_right)
		add_line(create_top)
		add_line(create_bottom)
		add_center(create_center)
	end

	def draw
		draw_fill
		draw_stroke
	end

	def create_right
		Line.new(@x + @w, @y, @x + @w, @y + @h, @color)
	end

	def create_left
		Line.new(@x, @y, @x, @y + @h, @color)
	end

	def create_top
		Line.new(@x - 1, @y, @x + @w, @y, @color)
	end

	def create_bottom
		Line.new(@x, @y + @h, @x + @w, @y + @h, @color)
	end

	def create_center
		center = []
		(1...@w).each do |n|
			center.push(Line.new(@x + n, @y, @x + n, @y + @h - 1, @color2))
		end
		center
	end

end