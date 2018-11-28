require "alimentos/version" 

# @author Omar Pérez Znakar 
# Esta clase representa la creación de un nodo para la clase Lista
Node = Struct.new(:value, :next, :prev) 

# @author Omar Pérez Znakar 
# Esta clase representa una lista a la que se le pasa un nodo que contenga lo que se desee
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
