require "alimentos/version" 

Node = Struct.new(:value, :next, :prev) 

class Lista
	include Enumerable
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
   	
	def pop_first
        	@first = @first.next
        	@first.prev = nil
    	end 

	def pop_last
    	@last = @last.prev
    	@last.next = nil
	end
	
	def each
		node = @first
		while node != nil do
		    yield node.value
		    node = node.next
		end	
	end
end
