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
	end

end
