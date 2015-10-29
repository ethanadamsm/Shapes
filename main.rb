require "gosu"
require_relative "square"
require_relative "rectangle"
require_relative "triangle"

class Main < Gosu::Window

	def initialize
		super(640, 480)

		@square = Square.new(100, 200, 50, Gosu::Color.argb(0xff_ff0000), Gosu::Color.argb(0xff_ff6600))
		@rectangle = Rectangle.new(300, 400, 50, 60, Gosu::Color.argb(0xff_ff0000), Gosu::Color.argb(0xff_ff6600))
		@triangle = Triangle.new(500, 20, 100, 100, Gosu::Color.argb(0xff_ff6600))
	end

	def draw
		@square.draw
		@rectangle.draw
		@triangle.draw
	end

end

window = Main.new
window.show