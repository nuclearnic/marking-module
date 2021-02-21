# frozen_string_literal: true

require_relative "module/version"

module Marking
  module Module
    class Error < StandardError; end

    class Generator < Rails::Generators::NamedBase
      include Rails::Generators::ResourceHelper
      desc "Generates MarkingModule"
    end
    # Your code goes here...
    # def self.generate
    #   puts 'hello world'
    # end
  end
end

