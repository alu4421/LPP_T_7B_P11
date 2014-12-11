require "quiz"

module Quiz
	describe Quiz::P_Quiz do
		before :each do
			@v_quiz=P_Quiz.new("Cuestionario de LPP 05/12/2014") {
				question 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
					:right => '1',
					wrong => '2',
					wrong => 'muchos',
					wrong => 'los que defina el usuario'

				question 'En Ruby los bloque son objetos que continen codigo',
					:right=>'Falso',
					wrong => 'Cierto'
				}
				puts @v_quiz.to_s
		end

		it "La clase es la que debe ser" do
			expect(@v_quiz.class).to eq(P_Quiz)
		end

		#it "Comprobar que existe funcion question" do
		#	expect(@v_quiz).to respond_to :question
		#end

		
	end #fin describe
end #fin module