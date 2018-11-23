RSpec.describe Operaciones do
    
    	before :all do
		@sujeto1 = Operaciones.new("Omar","79062976Q",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@sujeto2 = Operaciones.new("Omar","79062976Q",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
        	@sujeto3 = Operaciones.new("Omar","79062976Q",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
        	@sujeto4 = Operaciones.new("Omar","79062976Q",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@sujeto5 = Operaciones.new("Omar","79062976Q",63,1.70,"12:00",18,1,[81.0,81.9],[83.0,83.9],[12.5,12.0,13.0],[23.5,22.0,23.9],[18.0,18.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@lista= Lista.new(nil,nil)
        	@lista.insertEnd(@sujeto1,@sujeto2,@sujeto3,@sujeto4,@sujeto5)
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
	
	describe "Pruebas de clase Operaciones" do
		it "Operaciones es instancia de la clase Operaciones" do
            		expect(Operaciones.instance_of?Class).to be(true)
        	end
       		 it "Operaciones pertenece a la clase Class" do
            		expect(Operaciones.is_a?Class).to be(true)
        	end
        	it "El objeto pertenece a la clase Operaciones" do
            		expect(@sujeto1.is_a?Operaciones).to be(true)
        	end
        	it "El objeto puede usar la función cintura de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('cintura')).to eq(true)
        	end
        	it "El objeto puede usar la función cadera de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('cadera')).to eq(true)
        	end
        	it "El objeto puede usar la función bicipital de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('bicipital')).to eq(true)
        	end
        	it "El objeto puede usar la función tricipital de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('tricipital')).to eq(true)
        	end
        	it "El objeto puede usar la función subescapular de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('subescapular')).to eq(true)
        	end
        	it "El objeto puede usar la función suprailiaco de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('suprailiaco')).to eq(true)
        	end
        	it "El objeto puede usar la función brazo de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('brazo')).to eq(true)
        	end
        	it "El objeto puede usar la función imc de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('imc')).to eq(true)
        	end
        	it "El objeto puede usar la función porcentaje_grasa de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('porcentaje_grasa')).to eq(true)
        	end
        	it "El objeto puede usar la función rcc de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('rcc')).to eq(true)
        	end
        	it "El objeto puede usar la función to_s de la clase Operaciones" do
            		expect(@sujeto1.respond_to?('to_s')).to eq(true)
        	end
    	end

	describe "Pruebas de clase Lista" do 
        	it "El objeto pertenece a la clase lista" do
            		expect(@lista.is_a?Lista).to be(true)
        	end
        	it "El objeto puede usar la función insertEnd" do
            		expect(@lista.respond_to?('insertEnd')).to eq(true)
        	end
        	it "El objeto puede usar la función pop_first" do
            		expect(@lista.respond_to?('pop_first')).to eq(true)
        	end
    		it "El objeto puede usar la función pop_last" do
            		expect(@lista.respond_to?('pop_last')).to eq(true)
        	end
    	end

	describe "Clasificación según imc:" do 
        	c=0
        	while c < 4
            		it "Elemento con menos de 29.9 de imc" do
                		expect(@lista.last.value.imc).to be < (24.9)
                		@lista.pop_last
            		end
            		c+=1
        	end
    	end
end
