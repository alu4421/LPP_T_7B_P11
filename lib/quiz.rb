#encoding: utf-8
require "quiz/version"

module Quiz
	class Question
		attr_reader :enun, :answers

		def initialize (enun, answers)
			@enun = enun
			@answers = answers
		end

		def to_s
			out = ""
			out << enun << "\n"
			n = 1
			out << "\n\t #{n}.- #{answers[:right]}\n"
			n+=1
			answers[:wrong].each do |op|
				out<<"\t #{n}.- #{op}\n"
				n+=1
			end
			out
		end

	end #fin clase Question



	class P_Quiz
		attr_accessor :name, :questions

		def initialize(name, &block)
			self.name = name
			self.questions = []

			instance_eval &block 
		end

		def to_s
			out = "\n#{'*' * (name.size + 6)}\n"
			out << "** " + name + " **"
			out << "\n#{'*' * (name.size + 6)}\n\n"
			contador = 0
			questions.each do |question|
				out << "#{contador +1}) #{question}\n"
				contador += 1
			end
			out
		end 

		def question(text, answers = {})
			question = Question.new(text,answers)
			questions << question
		end

		def wrong (option)
			self.questions[-1].answers[:wrong] << option
		end

	end #fin clase P_Quiz

end #fin module Quiz
