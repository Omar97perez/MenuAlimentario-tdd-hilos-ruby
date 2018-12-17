require "alimentos/version"

# @author Omar Pérez Znakar 
# Esta clase representa la información nurtricional solbre un alimento x
class Comida
	include Comparable
	attr_reader :nombre,:cantidad,:porcion,:grasas,:grasas_saturadas,:grasas_monosaturadas,:grasas_polisaturadas,:hidratos_carbono,:azucares,:polialcoholes,:almidon,:fibra,:proteinas,:sal,:vitaminas_mineral
	attr_reader :valor_energetico_kj_porcion, :valor_energetico_kcal_porcion, :grasas_porcion, :grasas_saturadas_porcion, :hidratos_carbono_porcion, :azucares_porcion, :proteinas_porcion, :sal_porcion , :valor_energetico_kcal

	def initialize(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
		@nombre=nombre
    	@cantidad=cantidad
    	@porcion=porcion
    	@grasas = grasas
    	@grasas_saturadas=grasas_saturadas
    	@grasas_monosaturadas = grasas_monosaturadas
    	@grasas_polisaturadas=grasas_polisaturadas
    	@hidratos_carbono=hidratos_carbono
    	@azucares=azucares
    	@polialcoholes=polialcoholes
    	@almidon=almidon
    	@fibra=fibra
    	@proteinas=proteinas
    	@sal=sal
    	@vitaminas_mineral=vitaminas_mineral
	end
	

	# Esta función consiste en los cálculos de la fila completa de valor energético en kj (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de valor energético en kj
	def fila_valor_energetico_kj()
    	@valor_energetico_kj = ((@grasas_saturadas*37) + (@grasas_monosaturadas*37) + (@grasas_polisaturadas*37) + (@hidratos_carbono*17) + (@polialcoholes*10) + (@almidon*17) +(@fibra*8) + (@azucares*10) + (@proteinas*17) + (@sal*25)).round(1)
    	@valor_energetico_kj_cien_gramos = ((@valor_energetico_kj/@cantidad)*100).round(1)
    	@valor_energetico_kj_ir = ((@valor_energetico_kj/8400)*100).round(1)
    	@valor_energetico_kj_porcion = ((@valor_energetico_kj/@cantidad)*@porcion).round(1)
    	@valor_energetico_kj_ir_porcion = ((@valor_energetico_kj/8400)*@porcion).round(1)
    	[@valor_energetico_kj_cien_gramos,@valor_energetico_kj_ir,@valor_energetico_kj_porcion,@valor_energetico_kj_ir_porcion]
	end
    
    # Esta función consiste en los cálculos de la fila completa de valor energético en kcal (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de valor energético en kcal
	def fila_valor_energetico_kcal()
    	@valor_energetico_kcal = ((@grasas_saturadas*9) + (@grasas_monosaturadas*9) + (@grasas_polisaturadas*9) + (@hidratos_carbono*4) + (@azucares*4) + (@polialcoholes*2.4) + (@almidon*4) + (@fibra*2) + (@proteinas*4) + (@sal*6)).round(1)
    	@valor_energetico_kcal_cien_gramos = ((@valor_energetico_kcal/@cantidad)*100).round(1)
    	@valor_energetico_kcal_ir = ((@valor_energetico_kcal/2000)*100).round(1)
    	@valor_energetico_kcal_porcion = ((@valor_energetico_kcal/@cantidad)*@porcion).round(1)
    	@valor_energetico_kcal_ir_porcion = ((@valor_energetico_kcal/2000)*@porcion).round(1)
    	[@valor_energetico_kcal_cien_gramos,@valor_energetico_kcal_ir,@valor_energetico_kcal_porcion,@valor_energetico_kcal_ir_porcion]
	end
	
	# Esta función consiste en un get del valor energético kcal por poción.
	# @return valor energético kcal por poción.
	def valor_energetico_kcal_porcion()
		fila_valor_energetico_kcal()
    	@valor_energetico_kcal_porcion
	end
	
    # Esta función consiste en los cálculos de la fila completa de grasas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de grasas
   	def fila_grasas()
    	@grasas_cien_gramos = ((@grasas/@cantidad) * 100).round(1)
    	@grasas_ir = ((@grasas/70) * 100).round(1)
    	@grasas_porcion = ((@grasas/@cantidad) *@porcion).round(1)
    	@grasas_ir_porcion = ((@grasas/70) * @porcion).round(1)
    	[@grasas_cien_gramos,@grasas_ir,@grasas_porcion,@grasas_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de grasas saturadas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de grasas saturadas
	def fila_grasas_saturada()
    	@grasas_saturadas_cien_gramos = ((@grasas_saturadas/@cantidad)*100).round(1)
    	@grasas_saturadas_ir = ((@grasas_saturadas/20)*100).round(1)
    	@grasas_saturadas_porcion = ((@grasas_saturadas/@cantidad)*@porcion).round(1)
    	@grasas_saturadas_ir_porcion = ((@grasas_saturadas/20)*@porcion).round(1)
    	[@grasas_saturadas_cien_gramos,@grasas_saturadas_ir,@grasas_saturadas_porcion,@grasas_saturadas_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de grasas monosaturadas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de grasas monosaturadas
	def fila_grasas_monosaturadas()
    	@grasas_monosaturadas_cien_gramos = ((@grasas_monosaturadas/@cantidad) * 100).round(1)
    	@grasas_monosaturadas_ir = ((@grasas_monosaturadas/70) * 100).round(1)
    	@grasas_monosaturadas_porcion = ((@grasas_monosaturadas/@cantidad) *@porcion).round(1)
    	@grasas_monosaturadas_ir_porcion = ((@grasas_monosaturadas/70) * @porcion).round(1)
    	[@grasas_monosaturadas_cien_gramos,@grasas_monosaturadas_ir,@grasas_monosaturadas_porcion,@grasas_monosaturadas_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de grasas polisaturadas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de grasas polisaturadas
	def fila_grasas_polisaturadas()
    	@grasas_polisaturadas_cien_gramos = ((@grasas_polisaturadas/@cantidad)*100).round(1)
    	@grasas_polisaturadas_ir = ((@grasas_polisaturadas/20)*100).round(1)
    	@grasas_polisaturadas_porcion = ((@grasas_polisaturadas/@cantidad)*@porcion).round(1)
    	@grasas_polisaturadas_ir_porcion = ((@grasas_polisaturadas/20)*@porcion).round(1)
    	[@grasas_polisaturadas_cien_gramos,@grasas_polisaturadas_ir,@grasas_polisaturadas_porcion,@grasas_polisaturadas_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de hidratos de carbono (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de hidratos de carbono
	def fila_hidratos_carbono()
    	@hidratos_carbono_cien_gramos = ((@hidratos_carbono/@cantidad)*100).round(1)
    	@hidratos_carbono_ir = ((@hidratos_carbono/260)*100).round(1)
    	@hidratos_carbono_porcion = ((@hidratos_carbono/@cantidad)*@porcion).round(1)
    	@hidratos_carbono_ir_porcion = ((@hidratos_carbono/260)*@porcion).round(1)
    	[@hidratos_carbono_cien_gramos,@hidratos_carbono_ir,@hidratos_carbono_porcion,@hidratos_carbono_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de azúcares (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de azúcares
	def fila_azucares()
    	@azucares_cien_gramos = ((@azucares/@cantidad)*100).round(1)
    	@azucares_ir = ((@azucares/90)*100).round(1)
    	@azucares_porcion = ((@azucares/@cantidad)*@porcion).round(1)
    	@azucares_ir_porcion = ((@azucares/90)*@porcion).round(1)
    	[@azucares_cien_gramos,@azucares_ir,@azucares_porcion,@azucares_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de polialcoholes (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de polialcoholes
	def fila_polialcoholes()
    	@polialcoholes_cien_gramos = ((@polialcoholes/@cantidad)*100).round(1)
    	@polialcoholes_ir = ((@polialcoholes/20)*100).round(1)
    	@polialcoholes_porcion = ((@polialcoholes/@cantidad)*@porcion).round(1)
    	@polialcoholes_ir_porcion = ((@polialcoholes/20)*@porcion).round(1)
    	[@polialcoholes_cien_gramos,@polialcoholes_ir,@polialcoholes_porcion,@polialcoholes_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de almidón (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de almidón 
	def fila_almidon()
    	@almidon_cien_gramos = ((@almidon/@cantidad)*100).round(1)
    	@almidon_ir = ((@almidon/20)*100).round(1)
    	@almidon_porcion = ((@almidon/@cantidad)*@porcion).round(1)
    	@almidon_ir_porcion = ((@almidon/20)*@porcion).round(1)
    	[@almidon_cien_gramos,@almidon_ir,@almidon_porcion,@almidon_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de fibra (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de fibra
	def fila_fibra()
    	@fibra_cien_gramos = ((@fibra/@cantidad)*100).round(1)
    	@fibra_ir = ((@fibra/20)*100).round(1)
    	@fibra_porcion = ((@fibra/@cantidad)*@porcion).round(1)
    	@fibra_ir_porcion = ((@fibra/20)*@porcion).round(1)
    	[@fibra_cien_gramos,@fibra_ir,@fibra_porcion,@fibra_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de proteinas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de proteinas
	def fila_proteinas()
    	@proteinas_cien_gramos = ((@proteinas/@cantidad)*100).round(1)
    	@proteinas_ir = ((@proteinas/50)*100).round(1)
    	@proteinas_porcion = ((@proteinas/@cantidad)*@porcion).round(1)
    	@proteinas_ir_porcion = ((@proteinas/50)*@porcion).round(1)
    	[@proteinas_cien_gramos,@proteinas_ir,@proteinas_porcion,@proteinas_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de sal (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de sal
	def fila_sal()
    	@sal_cien_gramos = ((@sal/@cantidad)*100).round(1)
    	@sal_ir = ((@sal/6)*100).round(1)
    	@sal_porcion = ((@sal/@cantidad)*@porcion).round(1)
    	@sal_ir_porcion = ((@sal/6)*@porcion).round(1)
    	[@sal_cien_gramos,@sal_ir,@sal_porcion,@sal_ir_porcion]
	end

	# Esta función consiste en los cálculos de la fila completa de vitaminas (Por 100 gr/ IR por 100gr/ Por porción / Ir por porción)
	# @return Fila completa de vitaminas
	def fila_vitaminas_mineral()
    	@vitaminas_mineral_cien_gramos = ((@vitaminas_mineral/@cantidad)*100).round(1)
    	@vitaminas_mineral_ir = ((@vitaminas_mineral/20)*100).round(1)
    	@vitaminas_mineral_porcion = ((@vitaminas_mineral/@cantidad)*@porcion).round(1)
    	@vitaminas_mineral_ir_porcion = ((@vitaminas_mineral/20)*@porcion).round(1)
    	[@vitaminas_mineral_cien_gramos,@vitaminas_mineral_ir,@vitaminas_mineral_porcion,@vitaminas_mineral_ir_porcion]
	end

	# @return Matriz completa de la información nuticional
	def to_s()
		"#{fila_valor_energetico_kj()}\n#{fila_valor_energetico_kcal()}\n#{fila_grasas()}\n#{fila_grasas_saturada()}\n#{fila_grasas_monosaturadas()}\n#{fila_grasas_polisaturadas()}\n#{fila_hidratos_carbono()}\n#{fila_azucares()}\n#{fila_polialcoholes()}\n#{fila_almidon()}\n#{fila_fibra()}\n#{fila_proteinas()}\n#{fila_sal()}\n#{fila_vitaminas_mineral()}"
	end

	# Esta funciión consiste en una sobrecarga de los aperadores <=> para que se puedan comparar dos objetos a través de las grasas
	def <=> another
       valor_energetico_kcal_porcion <=> another.valor_energetico_kcal_porcion
	end
end