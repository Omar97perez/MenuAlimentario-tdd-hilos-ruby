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

end
