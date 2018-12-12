RSpec.describe Comparable do
    before :all do
		@alimento1 = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
		@alimento2 = Comida.new("Chocapic",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
		@alimento3 = Comida.new("Nesquik",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		@alimento4 = Comida.new("Nesquik",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		
		@sujeto1 = Operaciones.new("María","79062974Q","Reposo",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
		@sujeto2 = Operaciones.new("Omar","79062976Q","Reposo",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
    	@sujeto3 = Operaciones.new("Carla","79062975Q","Reposo",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
    	@sujeto4 = Operaciones.new("Carla","79062975Q","Reposo",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
  	end
  	
  	describe "Comparación Información Nutricional por valor energético usando las grasas"do
  	    it "Un alimento A es menor que otro B" do
            expect(@alimento1  < @alimento2).to eq(true)
        end
        it "Un alimento B no es menor que otro C" do
            expect(@alimento2  < @alimento3).to eq(false)
        end
  	    it "Un alimento B es mayor que otro C" do
            expect(@alimento2  > @alimento3).to eq(true)
        end
        it "Un alimento C no es mayor que otro B" do
            expect(@alimento3  > @alimento2).to eq(false)
        end
        it "Un alimento A no es igual que otro B" do
            expect(@alimento1  == @alimento2).to eq(false)
        end
        it "Un alimento C es igual que otro D" do
            expect(@alimento3  == @alimento4).to eq(true)
        end   
        it "Un alimento C es menor igual que otro D" do
            expect(@alimento3  <= @alimento4).to eq(true)
        end 
        it "Un alimento C es mayor igual que otro D" do
            expect(@alimento3  >= @alimento4).to eq(true)
        end    
    end
    
    describe "Comparación datos antopométricos usando el imc"do
  	    it "Una persona A es menor que otra B" do
            expect(@sujeto1  < @sujeto2).to eq(true)
        end
        it "Una persona B no es menor que otra C" do
            expect(@sujeto2  < @sujeto3).to eq(false)
        end
  	    it "Una persona B es mayor que otra C" do
            expect(@sujeto2  > @sujeto3).to eq(true)
        end
        it "Una persona C no es mayor que otra B" do
            expect(@sujeto3  > @sujeto2).to eq(false)
        end
        it "Una persona A no es igual que otra B" do
            expect(@sujeto1  == @sujeto2).to eq(false)
        end
        it "Una persona C es igual que otra D" do
            expect(@sujeto3  == @sujeto4).to eq(true)
        end   
        it "Una persona C es menor igual que otra D" do
            expect(@sujeto3  <= @sujeto4).to eq(true)
        end 
        it "Una persona C es mayor igual que otra D" do
            expect(@sujeto3  >= @sujeto4).to eq(true)
        end    
    end
  	
end


RSpec.describe Enumerable do
    before :all do
		@alimento1 = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
		@alimento2 = Comida.new("Chocapic",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
		@alimento3 = Comida.new("Nesquik",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		@alimento4 = Comida.new("Nesquik",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
		
		@lista1 = Lista.new(nil,nil)
		@lista1.insertEnd(@alimento1,@alimento2,@alimento3,@alimento4)
		
		@lista2 = Lista.new(nil,nil)
		@lista2.insertEnd(@alimento1,@alimento4,@alimento3,@alimento2)
		
		@sujeto1 = Operaciones.new("María","79062974Q","Reposo",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
		@sujeto2 = Operaciones.new("Omar","79062976Q","Reposo",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
    	@sujeto3 = Operaciones.new("Carla","79062975Q","Reposo",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
    	@sujeto4 = Operaciones.new("Carla","79062975Q","Reposo",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
    	
    	@lista3 = Lista.new(nil,nil)
		@lista3.insertEnd(@sujeto1,@sujeto2,@sujeto3,@sujeto4)
		
		@lista4 = Lista.new(nil,nil)
		@lista4.insertEnd(@sujeto1,@sujeto4,@sujeto3,@sujeto2)
    	
  	end

    describe "Enumerable Información Nutricional"do
        
        it "Comprobando el método max" do
            expect(@lista1.max).to eq(@alimento2)
        end
        
        it "Comprobando el método min" do
            expect(@lista1.min).to eq(@alimento1)
        end
        
        it "Comprobando el método sort" do
    		expect(@lista1.sort).to eq([@alimento1,@alimento4,@alimento3,@alimento2])
    		expect(@lista1.sort).not_to eq([@alimento2,@alimento4,@alimento3,@alimento1])
	    end
	    it "Comprobando el método collect" do
            expect( @lista2.collect{|i| @alimento4}).to eq([@alimento4,@alimento4,@alimento4,@alimento4])
            expect( @lista2.collect{|i| @alimento4}).not_to eq([@alimento1,@alimento2,@alimento3,@alimento4])
        end
        it "Comprobando el método select" do
            expect( @lista1.select{|i| i.nombre == "Kellogs" }).to eq([@alimento1])
            expect( @lista1.select{|i| i.nombre == "Kellogs" }).not_to eq([@alimento2])
        end
    end
    
    describe "Enumerable Datos antropométricos"do
        it "Comprobando el método max" do
            expect(@lista3.max).to eq(@sujeto2)
        end
        
        it "Comprobando el método min" do
            expect(@lista3.min).to eq(@sujeto1)
        end
        
        it "Comprobando el método sort" do
    		expect(@lista3.sort).to eq([@sujeto1,@sujeto4,@sujeto3,@sujeto2])
    		expect(@lista3.sort).not_to eq([@sujeto2,@sujeto4,@sujeto3,@sujeto1])
	    end
	    it "Comprobando el método collect" do
            expect( @lista4.collect{|i| @sujeto4}).to eq([@sujeto4,@sujeto4,@sujeto4,@sujeto4])
            expect( @lista4.collect{|i| @sujeto4}).not_to eq([@sujeto1,@sujeto2,@sujeto3,@sujeto4])
        end
        it "Comprobando el método select" do
            expect( @lista3.select{|i| i.nombre == "Omar" }).to eq([@sujeto2])
            expect( @lista3.select{|i| i.nombre == "Omar" }).not_to eq([@sujeto1])
        end
    end
end
