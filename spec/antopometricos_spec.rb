RSpec.describe Operaciones do
    
    	before :all do
			@sujeto1 = Operaciones.new("María","79062974Q","Reposo",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
			@sujeto2 = Operaciones.new("Omar","79062976Q","Ligera",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
    		@sujeto3 = Operaciones.new("Carla","79062975Q","Moderada",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
        	@sujeto4 = Operaciones.new("Omar","79062976Q","Intensa",65,172,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@sujeto5 = Operaciones.new("Omar","79062976Q","Reposo",63,170,"12:00",18,1,[81.0,81.9],[83.0,83.9],[12.5,12.0,13.0],[23.5,22.0,23.9],[18.0,18.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@lista= Lista.new(nil,nil)
        	@lista.insertEnd(@sujeto1,@sujeto2,@sujeto3,@sujeto4,@sujeto5)
        	
        	# Práctica 10
        	@alimento1 = Comida.new("Crema",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
		    @alimento2 = Comida.new("Pollo",100.0,34.0,8.5,5.0,2.5,1.0,65.0,35.0,5.0,33.0,5.3,2.0,1.7,3.0)
		    @alimento3 = Comida.new("Papas",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,1.0,1.0)
		    @alimento4 = Comida.new("Yogurt",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
		    @alimento5 = Comida.new("Cocacola",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		    
		    @alimento6 = Comida.new("Sopa",100.0,50.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
		    @alimento7 = Comida.new("Carne",100.0,50.0,8.5,5.0,2.5,1.0,65.0,35.0,5.0,33.0,5.3,2.0,1.7,3.0)
		    @alimento8 = Comida.new("Papas",100.0,500.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,1.0,1.0)
		    @alimento9 = Comida.new("Natilas",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
		    @alimento10 = Comida.new("Fanta",100.0,45.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		    
		    @alimento11 = Comida.new("Crema",100.0,15.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
		    @alimento12 = Comida.new("Pollo",100.0,15.0,8.5,5.0,2.5,1.0,65.0,35.0,5.0,33.0,5.3,2.0,1.7,3.0)
		    @alimento13 = Comida.new("Papas",100.0,15.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,1.0,1.0)
		    @alimento14 = Comida.new("Yogurt",100.0,15.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
		    @alimento15 = Comida.new("Cocacola",100.0,17.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		    
		    @menu1 = [@alimento1,@alimento2,@alimento3,@alimento4,@alimento5]
		    @menu2 = [@alimento6,@alimento7,@alimento8,@alimento9,@alimento10]
		    @menu3 = [@alimento11,@alimento12,@alimento13,@alimento14,@alimento15]
		    @sujetos = [@sujeto1,@sujeto2,@sujeto3,@sujeto4,@sujeto5]
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
  
	# Práctica 10
  	describe "Pruebas Gasto energético total" do
        	it "Sujeto 1" do 
            	expect(@sujeto1.gasto_energetico_total).to eq(285.38125)
        	end
        	it "Sujeto 2" do 
            	expect(@sujeto2.gasto_energetico_total).to eq(690.215)
        	end
        	it "Sujeto 3" do 
            	expect(@sujeto3.gasto_energetico_total).to eq(307.05125)
        	end
        	it "Sujeto 4" do 
            	expect(@sujeto4.gasto_energetico_total).to eq(2673.2)
        	end
        	it "Sujeto 5" do 
            	expect(@sujeto5.gasto_energetico_total).to eq(1768.25)
        	end        	
    end 
    
	describe "Pruebas Menus:"do
		it "Comprobando el Menú 1" do
			suma = 0
			@menu1.collect{|i|  suma = suma + i.fila_valor_energetico_kcal}
			expect(suma).to eq(1116.4)
        	expect(@sujetos.collect{|i| i.gasto_energetico_total < suma }).to eq([true,true,true,false,false])
        end
		it "Comprobando el Menú 1" do
			suma = 0
			@menu2.collect{|i|  suma = suma + i.fila_valor_energetico_kcal}
			expect(suma).to eq(4646.999999999999)
        	expect(@sujetos.collect{|i| i.gasto_energetico_total < suma }).to eq([true,true,true,true,true])
        end
    	it "Comprobando el Menú 3" do
			suma = 0
			@menu3.collect{|i|  suma = suma + i.fila_valor_energetico_kcal}
			expect(suma).to eq(518.0)
        	expect(@sujetos.collect{|i| i.gasto_energetico_total < suma }).to eq([true,false,true,false,false])
        end
	end
   
end
