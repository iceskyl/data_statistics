# frozen_string_literal: true

require "rails/generators"

module DataStatistics
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../..", __dir__)

      def add_migrations
        exec("rake data_statistics:install:migrations")
      end
    end
  end
end
