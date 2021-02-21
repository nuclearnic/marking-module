module MatasServiceGenerator
	def self.root
		File.dirname __dir__
	end

	class MyRailtie < Rails::Railtie
		service_generator_path = MatasServiceGenerator::root.+'/marking_module/generator.rb'

		config.app_generators do
			require service_generator_path
		end
	end
end