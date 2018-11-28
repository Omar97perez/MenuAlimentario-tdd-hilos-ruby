class Datos
   	attr_reader :nombre,:dni, :datos_antropometricos
    
    	def initialize(nombre,dni)
        	@nombre=nombre
        	@dni=dni
    	end
    	def to_s
    		"#{nombre}\n#{dni}"
    	end 
end 

class Operaciones < Datos
	include Comparable
 	attr_reader :peso,:altura,:hora,:edad,:sexo,:imc
    
    	def initialize(nombre,dni,peso,altura,hora,edad,sexo,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco,brazo)
    	    	super(nombre,dni)
        	@peso = peso
        	@altura = altura
        	@hora = hora
        	@edad = edad
        	@sexo = sexo
        	@cintura = cintura
        	@cadera = cadera
        	@tricipital = tricipital
        	@bicipital = bicipital
        	@subescapular = subescapular
        	@suprailiaco = suprailiaco
        	@brazo = brazo
    	end

	def cintura
        	suma = 0
        	@cintura.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @cintura.size()
    	end
	
	def cadera
        	suma = 0
        	@cadera.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @cadera.size()
    	end

	def bicipital
        	suma = 0
        	@bicipital.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @bicipital.size()
    	end

	def tricipital
        	suma = 0
        	@tricipital.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @tricipital.size()
    	end

	def subescapular
        	suma = 0
        	@subescapular.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @subescapular.size()
    	end

	def suprailiaco
        	suma = 0
        	@suprailiaco.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @suprailiaco.size()
    	end

	def brazo
        	suma = 0
        	@brazo.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @brazo.size()
    	end

	def imc()
        	@indice = @peso / (@altura * @altura)
        	@indice
    	end

	def porcentaje_grasa()
        	@porcentaje = (1.2 * @indice) + (0.23 * @edad) - (10.8 * @sexo) - 5.4
       		@resultado = case @porcentaje
            		when (-Float::INFINITY..18.4) then @resultado ="Bajo peso"
            		when (18.5..24.9) then @resultado ="Adecuado"
            		when (25.0..29.9) then @resultado ="Sobrepeso"
            		when (30.0..34.9) then @resultado ="Obesidad grado 1"
            		when (35.0..39.9) then @resultado ="Obesidad grado 2"
            		when (40.0..Float::INFINITY) then @resultado ="Obesidad grado 2"
        	end
        	@resultado
   	end

	def rcc()
       		@rcc = cintura / cadera
        	case @rcc
            		when (0.83..0.88) then @resultado ="Bajo"
            		when (0.89..0.95) then @resultado ="Moderado"
            		when (0.96..1.01) then @resultado ="Alto"
            		when (1.02..Float::INFINITY) then @resultado ="Muy alto"
        	end
        	@resultado
    	end
    	
    	def to_s
    		"#{cintura}\n#{cadera}\n#{bicipital}\n#{tricipital}\n#{subescapular}\n#{suprailiaco}\n#{brazo}\n#{imc}\n#{porcentaje_grasa}\n#{rcc}\n"
    	end
    	
    	def <=> another
        imc <=> another.imc
	end
end