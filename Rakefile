require "bundler/gem_tasks"

task :default => :spec

desc "Prueba las pruebas"
task :spec do
   sh "rspec -I. -Ilib -Ispec spec/quiz_spec.rb"
end

desc "Instalar Gema"
task :install do
	sh "gem install quizHanielMaria-0.0.1.gem"
end