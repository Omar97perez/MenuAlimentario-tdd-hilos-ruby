require "alimentos/version"

class Comida
	attr_reader :nombre,:cantidad,:porcion,:grasas,:grasas_saturadas,:grasas_monosaturadas,:grasas_polisaturadas,:hidratos_carbono
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
end
