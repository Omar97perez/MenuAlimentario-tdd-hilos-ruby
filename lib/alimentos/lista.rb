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
    
    # Esta función consiste en la incorporación de varios nodos en la lista
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
   	
   	# Esta función consiste en la extracción del primer elemento de la lista
	def pop_first
        	@first = @first.next
        	@first.prev = nil
    	end 

   	# Esta función consiste en la extracción del último elemento de la lista
	def pop_last
    	@last = @last.prev
    	@last.next = nil
	end
	
	# Esta función realiza un yield de cada elemento de la lista
	def each
		node = @first
		while node != nil do
		    yield node.value
		    node = node.next
		end	
	end
	
	# Esta función realiza una ordenación haciendo uso del bucle for
	def ordenacion_for
		@resultado = self.map { |x| x }
        for x in 0..self.count-1
            var = @resultado[x]
			i = x

            for y in x + 1..self.count-1
                if var > @resultado[y] 
                    var = @resultado[y]
                    i = y
                end
            end
            
            @resultado[i] = @resultado[x]
            @resultado[x] = var
        end
        @resultado
	end
	
	# Esta función realiza una ordenación haciendo uso del bucle each
	def ordenacion_each
		@resultado = self.map { |x| x }
		indice=0
        @resultado.each do |x|
            var = x
			i = indice
			indice2=indice + 1
			
            @resultado[indice2..@resultado.length-1].each do |y|
                if var > y 
                    var = y
                    i = indice2
                end
                indice2+=1
            end
            
            @resultado[i] = x
            @resultado[indice] = var
            
            indice+=1
        end
        @resultado
	end
end
