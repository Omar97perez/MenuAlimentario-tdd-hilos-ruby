require "alimentos/version" 

Node = Struct.new(:value, :next, :prev) 

class Lista
	attr_reader :first, :last
    
    	def initialize(first, last)
        	@first = first
        	@last = last
    	end
    
    	def insertEnd *args
        	args.each do |arg_item|
            		node = Node.new(arg_item, nil, nil)
            		if @last == nil
                		@last = @first = node
            		else
                		@last.next = node
                		node.prev = @last
                		@last = node
            		end
        	end
   	end
end
