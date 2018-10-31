require "thor"
require "gitkeep_cleaner"
require "logger"

module GitkeepCleaner
  class Cli < Thor
    default_command :clean

    desc "clean", "Delete unused .gitkeep"
    method_option :path, required: false, desc: 'root path'

    def clean
      GitkeepCleaner.clean(root_path:    options[:path] || Dir.pwd,
                           ignore_paths: ['node_modules', 'tmp', 'log'])
    end

    desc "version", "Show Version"

    def version
      say "Version: #{GitkeepCleaner::VERSION}"
    end
  end
end
