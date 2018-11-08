RSpec.describe Alimentos do

	before :all do
    		@alimento = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
  	end  

  	it "Has a version number" do
    		expect(Alimentos::VERSION).not_to be nil
 	end

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
	end

end
