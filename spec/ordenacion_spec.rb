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
            expect(@lista.bucle_for).to eq([@sujeto8,@sujeto1,@sujeto3,@sujeto6,@sujeto7,@sujeto2,@sujeto5,@sujeto9,@sujeto10,@sujeto4])
        end
        
        it "Ordenación método each" do
            expect(@lista.bucle_each).to eq([@sujeto8,@sujeto1,@sujeto3,@sujeto6,@sujeto7,@sujeto2,@sujeto5,@sujeto9,@sujeto10,@sujeto4])
        end
	end
end