RSpec.describe Operaciones do
    
    	before :all do
        	@sujeto1 = Operaciones.new("Omar","79062976Q",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
             	@lista= Lista.new(nil,nil)
        	@lista.insertEnd(@sujeto1)
	end

	describe "Pruebas de clase Datos" do
        	it "Datos pertenece a la clase Class" do 
            		expect(Datos.is_a?Class).to be(true)
        	end
        	it "El objeto pertenece a la clase Datos" do
            		expect(@sujeto1.is_a?Datos).to be(true)
        	end
        	it "El objeto puede usar la funcion to_s de la clase Datos" do
             		expect(@sujeto1.respond_to?('to_s')).to eq(true)
     	   	end
    	end
end
