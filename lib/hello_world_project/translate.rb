module HelloWorldProject
	class Translate

		SUPPORTED_LANGUAGES = {
			'dansk'		=> 	'hej verden',
			'default' 	=> 	'01001000 01100101 01101100 01101100 01101111 00100000 01010111 01101111 01110010 01101100 01100100',
			'deutsch' 	=> 	'guten tag',
			'dinosaur' 	=> 	'rawr!',
			'english' 	=> 	'hello world',
			'francais' 	=> 	'salut tout le monde',
			'isixhosa' 	=> 	'molweni'
		}

		attr_accessor :language

		def initialize(language)
			@language = if SUPPORTED_LANGUAGES.key? language
				language.downcase
			else
				'default'
			end
		end

		def say_hello
			SUPPORTED_LANGUAGES[@language]
		end

	end
end
