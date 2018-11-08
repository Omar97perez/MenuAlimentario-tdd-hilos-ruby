RSpec.describe Alimentos do

	before :all do
    		@alimento = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
  	end  

  	it "Has a version number" do
    		expect(Alimentos::VERSION).not_to be nil
 	end
	
	#Comprobación de que cada variable no es un argumento nulo
	describe "Atributos:" do
    		it "Debe existir un nombre" do
      			expect(@alimento.nombre).not_to be nil
    		end
		it "Debe existir una cantidad del producto en gramos" do
      			expect(@alimento.cantidad).not_to be nil
    		end
		it "Debe existir una porcion del alimento en gramos" do
      			expect(@alimento.porcion).not_to be nil
    		end
		it "Debe existir una cantidad de grasas" do
      			expect(@alimento.grasas).not_to be nil
    		end
		 it "Debe existir una cantidad de grasas saturadas" do
      			expect(@alimento.grasas_saturadas).not_to be nil
    		end
		it "Debe existir una cantidad de grasas monosaturadas" do
      			expect(@alimento.grasas_monosaturadas).not_to be nil
    		end
		 it "Debe existir una cantidad de grasas polisaturadas" do
      			expect(@alimento.grasas_polisaturadas).not_to be nil
    		end
		 it "Debe existir una cantidad de hidratos de carbono" do
      			expect(@alimento.hidratos_carbono).not_to be nil
    		end
		it "Debe existir una cantidad de azucares" do
      			expect(@alimento.azucares).not_to be nil
    		end
		it "Debe existir una cantidad de polialcoholes" do
      			expect(@alimento.polialcoholes).not_to be nil
    		end
		it "Debe existir una cantidad de almidon" do
      			expect(@alimento.almidon).not_to be nil
    		end
		it "Debe existir una cantidad de fibra" do
      			expect(@alimento.fibra).not_to be nil
    		end
		it "Debe existir una cantidad de proteinas" do
      			expect(@alimento.proteinas).not_to be nil
    		end
		it "Debe existir una cantidad de sal" do
      			expect(@alimento.sal).not_to be nil
    		end
		it "Debe existir una cantidad de vitaminas_mineral" do
      			expect(@alimento.vitaminas_mineral).not_to be nil
    		end    
	end
	#Comprobación de que devuleve el valor que debe
	describe "Gets:" do
    		it "Existe un método para obtener el nombre." do
      			expect(@alimento.nombre).to eq("Kellogs")
    		end
		it "Existe un método para obtener la cantidad" do
      			expect(@alimento.cantidad).to eq(100.0)
    		end
		it "Existe un método para obtener la porción del alimento" do
      			expect(@alimento.porcion).to eq(30.0)
    		end
		it "Existe un método para obtener la cantidad de grasas" do
      			expect(@alimento.grasas).to eq(7.0)
    		end
		it "Existe un método para obtener la cantidad de grasas saturadas" do
      			expect(@alimento.grasas_saturadas).to eq(4.0)
    		end
		it "Existe un método para obtener la cantidad de grasas monosaturadas" do
      			expect(@alimento.grasas_monosaturadas).to eq(2.0)
    		end
		it "Existe un método para obtener la cantidad de grasas polisaturadas" do
      			expect(@alimento.grasas_polisaturadas).to eq(1.0)
    		end
		it "Existe un método para obtener la cantidad de hidratos de carbono" do
      			expect(@alimento.hidratos_carbono).to eq(71.0)
    		end
		it "Existe un método para obtener la cantidad de azucares" do
      			expect(@alimento.azucares).to eq(36.0)
    		end
		it "Existe un método para obtener la cantidad de polialcoholes" do
      			expect(@alimento.polialcoholes).to eq(0.0)
    		end
		it "Existe un método para obtener la cantidad de almidon" do
      			expect(@alimento.almidon).to eq(46.0)
    		end
		it "Existe un método para obtener la cantidad de fibra" do
      			expect(@alimento.fibra).to eq(4.0)
    		end
		it "Existe un método para obtener la cantidad de proteinas" do
      			expect(@alimento.proteinas).to eq(0.0)
    		end
		it "Existe un método para obtener la cantidad de sal" do
      			expect(@alimento.sal).to eq(0.9)
    		end
		it "Existe un método para obtener la cantidad de vitaminas y minarales" do
      			expect(@alimento.vitaminas_mineral).to eq(1.0)
    		end
	end

	describe "Filas:" do
    		it "Existe un método para obtener la fila completa del valor energético (KJ)" do 
      			expect(@alimento.fila_valor_energetico_kj).to eq([2662.5, 31.7, 798.8, 9.5])
    		end
    		it "Existe un método para obtener la fila completa del valor energético (Kcal)" do
      			expect(@alimento.fila_valor_energetico_kcal).to eq([688.4, 34.4, 206.5, 10.3])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de grasas" do
      			expect(@alimento.fila_grasas).to eq([7.0, 10.0, 2.1, 3.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de grasas saturadas" do
      			expect(@alimento.fila_grasas_saturada).to eq([4.0, 20.0, 1.2, 6.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de grasas monosaturadas" do
      			expect(@alimento.fila_grasas_monosaturadas).to eq([2.0, 2.9, 0.6, 0.9])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de grasas polisaturadas" do
      			expect(@alimento.fila_grasas_polisaturadas).to eq([1.0, 5.0, 0.3, 1.5])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de hidratos_carbono" do
      			expect(@alimento.fila_hidratos_carbono).to eq([71.0, 27.3, 21.3, 8.2])
    		end
     		it "Existe un método para obtener la fila completa de la cantidad de azucares" do
      			expect(@alimento.fila_azucares).to eq([36.0, 40.0, 10.8, 12.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de polialcoholes" do
      			expect(@alimento.fila_polialcoholes).to eq([0.0, 0.0, 0.0, 0.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de almidon" do
      			expect(@alimento.fila_almidon).to eq([46.0, 230.0, 13.8, 69.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de fibra" do
      			expect(@alimento.fila_fibra).to eq([4.0, 20.0, 1.2, 6.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de proteinas" do
      			expect(@alimento.fila_proteinas).to eq([0.0, 0.0, 0.0, 0.0])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de sal" do
      			expect(@alimento.fila_sal).to eq([0.9, 15.0, 0.3, 4.5])
    		end
    		it "Existe un método para obtener la fila completa de la cantidad de vitaminas y minerales" do
      			expect(@alimento.fila_vitaminas_mineral).to eq([1.0, 5.0, 0.3, 1.5])
    		end
  	end 
	describe "Matriz:" do 
    		it "Existe un método para obtener la tabla completa de información nutricional" do
      			expect(@alimento.to_s).to eq("[2662.5, 31.7, 798.8, 9.5]\n[688.4, 34.4, 206.5, 10.3]\n[7.0, 10.0, 2.1, 3.0]\n[4.0, 20.0, 1.2, 6.0]\n[2.0, 2.9, 0.6, 0.9]\n[1.0, 5.0, 0.3, 1.5]\n[71.0, 27.3, 21.3, 8.2]\n[36.0, 40.0, 10.8, 12.0]\n[0.0, 0.0, 0.0, 0.0]\n[46.0, 230.0, 13.8, 69.0]\n[4.0, 20.0, 1.2, 6.0]\n[0.0, 0.0, 0.0, 0.0]\n[0.9, 15.0, 0.3, 4.5]\n[1.0, 5.0, 0.3, 1.5]")
    		end
	end
  	describe "Legislación Europea sobre IR:" do
    		it "El valor energético por porción de comida es menor que 8400KJ" do 
      			expect(@alimento.valor_energetico_kj_porcion).to be < (8400)
    		end
    		it "El valor energético por porción de comida es menor que 2000 kcal/g" do
      			expect(@alimento.valor_energetico_kcal_porcion).to be < (2000)
    		end
    		it "La grasa por porción de comida es menor que 70g" do
      			expect(@alimento.grasas_porcion).to be < (70)
    		end
    		it "La grasa saturadas por porción de comida es menor que 20g" do
      			expect(@alimento.grasas_saturadas_porcion).to be < (20)
    		end
    		it "Los hidratos de carbono por porción de comida es menor que 260g" do
      			expect(@alimento.hidratos_carbono_porcion).to be < (260)
    		end
    		it "Los azúcares por porción de comida es menor que 90g" do
      			expect(@alimento.azucares_porcion).to be < (90)
    		end
    		it "Los azúcares por porción de comida es menor que 50g" do
      			expect(@alimento.proteinas_porcion).to be < (50)
    		end
    		it "La sal por porción de comida es menor que 6g" do
      			expect(@alimento.sal_porcion).to be < (6)
    		end
  	end
end
