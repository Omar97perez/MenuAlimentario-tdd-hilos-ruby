RSpec.describe Node do
	before :all do
        	@node1=Node.new(1, nil, nil)
        	@node2=Node.new(2, nil, @node1)
        	@node1.next=@node2
    	end

	describe "Prueba valor nodos:" do
        	it "Node 1 tiene valor 1" do
            		expect(@node1.value).to eq(1)
        	end 
		it "Node 2 tiene valor 2" do
            		expect(@node2.value).to eq(2)
        	end
    	end

	describe "Prueba anterior y siguiente a los nodos:" do
        	it "Debe existir un nodo siguiente a nodo 1 " do
            		expect(@node1.next).not_to be nil
        	end

		it "Debe existir un nodo anterior a nodo 2 " do
            		expect(@node2.prev).not_to be nil
        	end

		it "El nodo que le sigue a nodo 1 es el nodo 2" do
            		expect(@node1.next.value).to eq(2)
        	end

		it "El nodo que anterior a nodo 2 es el nodo 1" do
            		expect(@node2.prev.value).to eq(1)
        	end
	end
end

RSpec.describe Lista do

	before :all do
        	@alimento1 = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
        	@alimento2 = Comida.new("Lion",100.0,34.0,8.5,5.0,2.5,1.0,65.0,35.0,5.0,33.0,5.3,2.0,1.7,3.0)
        	@node1=Node.new(@alimento1, nil, nil)
        	@node2=Node.new(@alimento2, nil, @node1)
        	@node3=Node.new(nil, nil, nil)
        	@node1.next=@node2 
        	@lista= Lista.new(@node1,@node2)
        	@lista_menor= Lista.new(@node3,@node3)
 	
	end 
	describe "Prueba valor listas:" do
        	it "Existe cabeza de la lista" do
            		expect(@lista.first).not_to be nil
        	end
        	it "Existe cola de la lista" do
            		expect(@lista.last).not_to be nil
        	end
        	it "La cabeza de la lista es Kellogs" do
            		expect(@lista.first.value.nombre).to eq("Kellogs")
        	end
        	it "La cola de la lista es Lion" do
            		expect(@lista.last.value.nombre).to eq("Lion")
        	end
        
    	end

	describe "Inserción de nodos:" do
        
		it "Insertar un nodo" do
            		@alimento3 = Comida.new("Crunch",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,1.0,1.0)
            		@lista.insertEnd(@alimento3)
            		expect(@lista.last.value).to eq(@alimento3)
        	end
        
        	it "Insertar varios nodos" do
            		@alimento4= Comida.new("Chocapic",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
            		@alimento5 = Comida.new("Nesquik",100.0,37.0,7.2,4.2,2.0,1.0,70.0,30.0,0.5,37.0,5.3,2.0,0.2,1.5)
            		@alimento6= Comida.new("Estrellitas",100.0,32.0,10.5,5.5,3.0,2.0,70.0,30.0,2.0,39.0,4.2,1.2,0.8,2.2)
            		@alimento7= Comida.new("All bran",100.0,32.0,10.5,5.5,3.0,2.0,70.0,30.0,2.0,39.0,4.2,1.2,0.8,2.2)
            		@alimento8= Comida.new("ChocoKrispies",100.0,32.0,10.5,5.5,3.0,2.0,70.0,30.0,2.0,39.0,4.2,1.2,0.8,2.2)
            		@lista.insertEnd(@alimento4,@alimento5,@alimento6,@alimento7,@alimento8)
            		expect(@lista.last.value).to eq(@alimento8)
        	end
    	end
end
