class Array
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