require 'rails/generators'
require 'fileutils'

class Generator < Rails::Generators::NamedBase
  # source_root File.expand_path('../templates', __FILE__)
  source_root File.expand_path('../templates', 'marking_module.rb')

  # argument :methods, type: :array, default: [], banner: "method method"
  # class_option :module, type: :string

  def run
    # @module_name = options[:module]

    service_dir_path = Rails.root.join 'app', 'lib'
    service_dir_path = service_dir_path.join @module_name.underscore if module?
    generator_path = service_dir_path.join "marking_module.rb"
    # generator_path = service_dir_path.join "#{file_name}.rb"

    FileUtils.mkdir_p(service_dir_path)

    template "service.erb", generator_path
  end
  
  private
  
  def module?
    @module_name.present?
  end
  
  def methods?
    methods.any?
  end

end
