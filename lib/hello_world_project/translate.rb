module HelloWorldProject
	class Translate

		SUPPORTED_LANGUAGES = {
			'default' 	=> 	'hello world',
			'deutsch' 	=> 	'guten tag',
			'dinosaur' 	=> 	'rawr!',
			'english' 	=> 	'hello world',
			'francais' 	=> 	'salut tout le monde',
			'isixhosa' 	=> 	'molweni'
		}

		attr_accessor :language

		def initialize(language)
			@language = if SUPPORTED_LANGUAGES.key? language
										language
									else
										'default'
									end
		end

		def say_hello
			SUPPORTED_LANGUAGES[@language]
		end

	end
end