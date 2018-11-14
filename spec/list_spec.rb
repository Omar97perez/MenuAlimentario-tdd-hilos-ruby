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
        	@node1.next=@node2 end
        	@lista= Lista.new(@node1,@node2)
        	@lista_menor= Lista.new(@node3,@node3)
 	
	end
