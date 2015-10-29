require_relative "shape"
require_relative "line"
require_relative "rectangle"

class Square < Rectangle

	def initialize(x, y, w, color, color2)
		super(x, y, w, w, color, color2)
	end

end