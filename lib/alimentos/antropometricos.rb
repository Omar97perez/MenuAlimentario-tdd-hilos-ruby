# require "alimentos/version" 

# @author Omar Pérez Znakar 
# Esta clase representa los Datos personales de una persona x
class Datos
   	attr_reader :nombre,:dni
    
	def initialize(nombre,dni)
    	@nombre=nombre
    	@dni=dni
	end
	
	def to_s
		"#{nombre}\n#{dni}"
	end 
end 

# @author Omar Pérez Znakar 
# Esta clase representa los datos antopométricos de una persona x
class Operaciones < Datos
	include Comparable
 	attr_reader :peso,:altura,:hora,:edad,:sexo,:imc
	def initialize(nombre,dni,actividad,peso,altura,hora,edad,sexo,cintura,cadera,tricipital,bicipital,subescapular,suprailiaco,brazo)
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
    	@actividad = actividad
	end

	# Esta función consiste en calcular la media de la cintura de los valores dado
	# @return media cintura
	def cintura
        	suma = 0
        	@cintura.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @cintura.size()
    	end
    	
	# Esta función consiste en calcular la media de la cintura de los valores dado
	# @return media cintura
	def cadera
        	suma = 0
        	@cadera.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @cadera.size()
    	end
    	
	# Esta función consiste en calcular la media de la cintura de los valores dado
	# @return media cintura
	def bicipital
        	suma = 0
        	@bicipital.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @bicipital.size()
    	end

	# Esta función consiste en calcular la media del tricipital de los valores dado
	# @return media tricipital
	def tricipital
        	suma = 0
        	@tricipital.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @tricipital.size()
    	end

	# Esta función consiste en calcular la media del subescapular de los valores dado
	# @return media subescapular
	def subescapular
        	suma = 0
        	@subescapular.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @subescapular.size()
    	end

	# Esta función consiste en calcular la media del suprailiaco de los valores dado
	# @return media suprailiaco
	def suprailiaco
        	suma = 0
        	@suprailiaco.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @suprailiaco.size()
    	end

	# Esta función consiste en calcular la media de la cintura de los valores dado
	# @return media cintura
	def brazo
        	suma = 0
        	@brazo.each {|elemento| suma = suma + elemento}
        	div = 0
        	div = suma / @brazo.size()
    	end

	# Esta función consiste en calcular el imc
	# @return imc
	def imc()
        	@indice = @peso / (@altura * @altura)
        	@indice
    	end

	# Esta función consiste calcular en que intervalo de porcentaje de grasa
	# @return nombre del intervalo de porcentaje de grasa
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

	# Esta función consiste calcular en que intervalo de rcc
	# @return nombre del intervalo del rcc
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

	# @return valores datos antropométricos
    def to_s
    	"#{cintura}\n#{cadera}\n#{bicipital}\n#{tricipital}\n#{subescapular}\n#{suprailiaco}\n#{brazo}\n#{imc}\n#{porcentaje_grasa}\n#{rcc}\n"
    end


	# Esta función consiste el cálculo de los gastos energéticos totales
	# @return gastos energéticos totales
    def gasto_energetico_total()
    	@peso_teorico_total = (@altura - 150) * (0.75 + 50)
    	if sexo==0 
    		@gasto_energetico_basal = (10*@peso) + (6.25 * @altura) - (5*@edad) - 161
    	else
    		@gasto_energetico_basal = (10*peso) + (6.25 * altura) - (5*edad) + 5
    	end	
    	@efecto_termogeno = @gasto_energetico_basal * 0.10
    	case @actividad
        		when ("Reposo") then @factor = 0.0
        		when ("Ligera") then @factor = 0.12
        		when ("Moderada") then @factor = 0.27
        		when ("Intensa") then @factor = 0.54
    	end
    	@gasto_actividad_fisica = @gasto_energetico_basal * @factor
    	
    	@gasto_energetico_total = @gasto_energetico_basal + @efecto_termogeno + @gasto_actividad_fisica
    end    
    
    	# Esta funciión consiste en una sobrecarga de los aperadores <=> para que se puedan comparar dos objetos a través de las grasas
	def <=> another
    	gasto_energetico_total <=> another.gasto_energetico_total
    	end
    
end
