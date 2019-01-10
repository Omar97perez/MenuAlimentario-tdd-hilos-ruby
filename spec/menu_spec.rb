require "spec_helper"

RSpec.describe Menu do
    before :all do
        # @menu = Menu.new("Lunes") do
        #     desayuno    :nombre => "Cereales",
        #               	:cantidad => 100.0,
        #               	:porcion => 30.0,
        #               	:grasas => 7.0,
        #               	:grasas_saturadas => 4.0,
        #               	:grasas_monosaturadas => 2.0,
        #               	:grasas_polisaturadas => 1.0,
        #               	:hidratos_carbono => 71.0,
        #               	:azucares => 36.0,
        #               	:polialcoholes => 0.0,
        #               	:almidon => 46.0,
        #               	:fibra => 4.0,
        #               	:proteinas => 0.0,
        #               	:sal => 0.9,
        #               	:vitaminas_mineral => 1.0
        # end
        
        @menu = Menu.new("Lunes")
    	@menu.desayuno("Crunch",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.desayuno("Leche",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.almuerzo("Pollo",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.almuerzo("Papas",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.almuerzo("Yogurt",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.cena("Pizza",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    	@menu.cena("Helado",100.0,35.0,7.5,4.5,2.0,1.0,80.0,40.0,0.0,36.0,4.3,1.0,0.7,2.0)
    end
    
    describe "Interior de clase:"do
        it "El menu pertenece a la clase correspondiente" do
    		expect(@menu.is_a?Menu).to be(true)
    	end
        it "El Menu tiene una función desayuno" do
    		expect(@menu.respond_to?("desayuno")).to be(true)
    	end
    	it "El Menu tiene una función almuerzo" do
    		expect(@menu.respond_to?("almuerzo")).to be(true)
    	end
    	it "El Menu tiene una función cena" do
    		expect(@menu.respond_to?("cena")).to be(true)
    	end
    	it "El Menu tiene una función to_s" do
    		expect(@menu.respond_to?("to_s")).to be(true)
    	end
    end
    
    describe "Salida:"do
        it "Comprobando salida correcta" do
            expect(@menu.to_s) == ("\nLunesComposicion nutricional:\n\t\t\tGrasas\tcarbohidratos\tproteinas\tfibra\tsal\tvalor energético\nDesayuno\n\n\tCrunch\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\n\tLeche\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\nAlmuerzo\n\tPollo\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\n\tPapas\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\n\tYogurt\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\nCena\n\tPizza\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\n\tHelado\t\t7.5\t80.0\t\t1.0\t\t4.3\t0.7\t247.9\nValor energético total: 1735.3000000000002")
        end
    end
    
end