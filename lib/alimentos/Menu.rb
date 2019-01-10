
class Menu
	
    def initialize(nombre)
		@nombre = nombre
		@desayuno = []
		@almuerzo = []
		@cena = []
		@total = 0
    end
    
    def to_s
        output = "\n#{@nombre}"
		output <<  "Composicion nutricional:\n"
		output <<  "\t\t\tGrasas\tcarbohidratos\tproteinas\tfibra\tsal\tvalor energético\n"
		output <<  "Desayuno\n"
		for i in (0..@desayuno.size-1)
			output <<  "\t#{@desayuno[i].nombre}\t\t#{@desayuno[i].grasas}\t#{@desayuno[i].hidratos_carbono}\t\t#{@desayuno[i].proteinas}\t\t#{@desayuno[i].fibra}\t#{@desayuno[i].sal}\t#{@desayuno[i].valor_energetico_kcal_porcion()}"
			output <<  "\n"
			@total = @total + @desayuno[i].valor_energetico_kcal_porcion()
		end
		
		output <<  "Almuerzo\n"
		for i in (0..@almuerzo.size-1)
			output <<  "\t#{@almuerzo[i].nombre}\t\t#{@almuerzo[i].grasas}\t#{@almuerzo[i].hidratos_carbono}\t\t#{@almuerzo[i].proteinas}\t\t#{@almuerzo[i].fibra}\t#{@almuerzo[i].sal}\t#{@almuerzo[i].valor_energetico_kcal_porcion()}"
			output <<  "\n"
			@total = @total + @almuerzo[i].valor_energetico_kcal_porcion()
		end
		
		output <<  "Cena\n"
		for i in (0..@cena.size-1)
			output <<  "\t#{@cena[i].nombre}\t\t#{@cena[i].grasas}\t#{@cena[i].hidratos_carbono}\t\t#{@cena[i].proteinas}\t\t#{@cena[i].fibra}\t#{@cena[i].sal}\t#{@cena[i].valor_energetico_kcal_porcion()}"
			output <<  "\n"
			@total = @total + @cena[i].valor_energetico_kcal_porcion()
		end
		output <<  "Valor energético total: "
		output <<  "#{@total}"
		output
    end
    
    def desayuno(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        alimento = Comida.new(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        @desayuno <<  alimento
    end
    
    def almuerzo(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        alimento = Comida.new(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        @almuerzo <<  alimento
    end
    
    def cena(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        alimento = Comida.new(nombre,cantidad,porcion,grasas,grasas_saturadas,grasas_monosaturadas,grasas_polisaturadas,hidratos_carbono,azucares,polialcoholes,almidon,fibra,proteinas,sal,vitaminas_mineral)
        @cena <<  alimento
    end

end