require "rspec/core/rake_task"
require "foodcritic"
require "kitchen"

namespace :style do
  desc "Run Chef style checks"
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ["any"],
      tags: ["~FC005"]
    }
  end
end

desc "Run all style checks"
task style: ["style:chef"]

# Rspec and ChefSpec
desc "Run ChefSpec examples"
RSpec::Core::RakeTask.new(:spec)

# Integration tests. Kitchen.ci
namespace :integration do
  desc "Run Test Kitchen with Docker"
  task :docker do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end
end

# Default
task default: ["style", "spec", "integration:docker"]