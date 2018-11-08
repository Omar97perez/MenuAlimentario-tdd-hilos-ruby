RSpec.describe Alimentos do

	before :all do
    		@alimento = Comida.new("Kellogs",100.0,30.0,7.0,4.0,2.0,1.0,71.0,36.0,0.0,46.0,4.0,0.0,0.9,1.0)
  	end  

  	it "Has a version number" do
    		expect(Alimentos::VERSION).not_to be nil
 	 end
end
