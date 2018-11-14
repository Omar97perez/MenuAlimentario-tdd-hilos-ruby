require "alimentos/version"
Node = Struct.new(:value,:next,:prev)

class Lista

	attr_reader :first, :last

	def initialize(first,last)
		@first= first
		@lsta = last
	end
end
