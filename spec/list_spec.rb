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

end

RSpec.describe Lista do

end
