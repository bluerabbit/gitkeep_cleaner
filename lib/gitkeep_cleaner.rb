require "gitkeep_cleaner/version"
require "logger"

module GitkeepCleaner
  class << self
    def clean(root_path:, ignore_paths: [])
      logger = Logger.new(STDOUT)
      paths  = %w(.gitkeep .keep).map { |filename| "#{root_path}/**/*/#{filename}" }
      ignore_full_paths = ignore_paths.map {|v| "#{root_path}/#{v}" }
      paths.each do |path|
        Dir.glob(path) do |keep_file_path|
          dir_path = File.dirname(keep_file_path)

          next if ignore_full_paths.include?(dir_path)

          files = Dir.glob(["#{dir_path}/**/*.*", "#{dir_path}/**/.*"])
          if files.size > 1
            logger.info("Remove: #{keep_file_path}")
            File.delete(keep_file_path)
          end
        end
      end
    end
  end
end
