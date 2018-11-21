RSpec.describe Operaciones do
    
    	before :all do
        	@sujeto1 = Operaciones.new("Omar","79062976Q",65,1.72,"12:00",20,1,[82.0,82.9],[82.0,82.9],[10.5,10.0,11.0],[25.5,26.0,25.9],[17.0,17.0,17.9],[17.0,17.0,17.9],[10.0,11.0])
             	@lista= Lista.new(nil,nil)
        	@lista.insertEnd(@sujeto1)
	end
end
