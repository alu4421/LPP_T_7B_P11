require "quiz"

module Quiz
	describe Quiz::P_Quiz do
		before :each do
			@v_quiz=P_Quiz.new("Cuestionario de LPP 05/12/2014") {
				question 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
					:right => '1',
					:wrong => []
					wrong '2'
					wrong 'muchos'
					wrong 'los que defina el usuario'

				question 'En Ruby los bloque son objetos que continen codigo',
					:right=>'Falso',
					:wrong => []
					wrong 'Cierto'

				question '¿En que año Cristobal Colón descubrió América?',
				    :right => '1492',
				    :wrong =>[]
				    wrong '1942'
				    wrong '1808'
				    wrong '1914'
			    
			    a = rand(10)
			    b = rand(10)
			    question "#{a}+#{b} = ",
			    	:right => "#{a + b}",
			    	:wrong => []
			    	wrong "44"
			    	wrong "#{a + b + 2}"
			    	wrong "#{a + b - 2}"
				}
				puts @v_quiz.to_s
		end

		it "La clase es la que debe ser" do
			expect(@v_quiz.class).to eq(P_Quiz)
		end

		
	end #fin describe
end #fin module