class Shape

	def initialize(width, height)
		@width = width
		@height = height
		@lines = []
		@center = nil
	end

	def draw_fill
		@center.each do |line|
			line.draw
		end
	end	

	def draw_stroke
		@lines.each do |line|
			line.draw
		end
	end

	def add_line(line)
		@lines.push(line)
	end

	def add_center(center)
		@center = center
	end

end