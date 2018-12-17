require "benchmark"

RSpec.describe Lista do
    before :all do
			@sujeto1 = Operaciones.new("María","79062974Q","Reposo",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
			@sujeto2 = Operaciones.new("Omar","79062976Q","Ligera",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
    		@sujeto3 = Operaciones.new("Carla","79062975Q","Moderada",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
        	@sujeto4 = Operaciones.new("Carlos","79062976Q","Intensa",65,172,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@sujeto5 = Operaciones.new("Juan","79062976Q","Reposo",63,170,"12:00",18,1,[81.0,81.9],[83.0,83.9],[12.5,12.0,13.0],[23.5,22.0,23.9],[18.0,18.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
			@sujeto6 = Operaciones.new("Andrea","79062974Q","Ligera",49,1.67,"12:00",16,0,[72.0,72.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
			@sujeto7 = Operaciones.new("Sergio","79062976Q","Reposo",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
    		@sujeto8 = Operaciones.new("Isabel","79062975Q","Ligera",47,1.62,"12:00",19,0,[70.0,70.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[25.5,26.0,25.9],[10.0,11.0])
        	@sujeto9 = Operaciones.new("Antonio","79062976Q","Ligera",65,172,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	@sujeto10 = Operaciones.new("Alexis","79062976Q","Moderada",63,170,"12:00",18,1,[81.0,81.9],[83.0,83.9],[12.5,12.0,13.0],[23.5,22.0,23.9],[18.0,18.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
        	
		    @lista= Lista.new(nil,nil)
        	@lista.insertEnd(@sujeto1,@sujeto2,@sujeto3,@sujeto4,@sujeto5,@sujeto6,@sujeto7,@sujeto8,@sujeto9,@sujeto10)
	end
	
	describe "Ordenación clase Lista:"do

        it "Ordenación método sort" do
            expect(@lista.sort).to eq([@sujeto8,@sujeto1,@sujeto3,@sujeto6,@sujeto7,@sujeto2,@sujeto5,@sujeto9,@sujeto10,@sujeto4])
        end
        
        it "Ordenación método for" do
            expect(@lista.ordenacion_for).to eq([@sujeto8,@sujeto1,@sujeto3,@sujeto6,@sujeto7,@sujeto2,@sujeto5,@sujeto9,@sujeto10,@sujeto4])
        end
        
        it "Ordenación método each" do
            expect(@lista.ordenacion_each).to eq([@sujeto8,@sujeto1,@sujeto3,@sujeto6,@sujeto7,@sujeto2,@sujeto5,@sujeto9,@sujeto10,@sujeto4])
        end
        
        it "benchmark metodos ordenar" do
            n=2000
            Benchmark.bm do |x|
            x.report("for:") {  n.times{@lista.ordenacion_for} }
            x.report("each:") {  n.times{@lista.ordenacion_each} }
            x.report("sort:") {  n.times{@lista.sort} }  
        end
        end
	end
end

RSpec.describe Lista do
    before :all do
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
		    
		    @menu1 = [@alimento1,@alimento2,@alimento3,@alimento4,@alimento5,@alimento6,@alimento7,@alimento8,@alimento9,@alimento10]
	end

end