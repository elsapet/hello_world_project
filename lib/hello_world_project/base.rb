class HelloWorldProject
	class Base

		def self.say_hello(language = 'english')
			translate = Translate.new(language)
			translate.say_hello
		end

	end
end