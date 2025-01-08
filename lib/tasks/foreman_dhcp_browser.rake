require 'rake/testtask'

# Tests
namespace :test do
  desc 'Test ForemanDHCPBrowser'
  Rake::TestTask.new(:foreman_dhcp_browser) do |t|
    test_dir = File.expand_path('../../test', __dir__)
    t.libs << 'test'
    t.libs << test_dir
    t.pattern = "#{test_dir}/**/*_test.rb"
    t.verbose = true
    t.warning = false
  end
end

Rake::Task[:test].enhance ['test:foreman_dhcp_browser']

load 'tasks/jenkins.rake'
if Rake::Task.task_defined?(:'jenkins:unit')
  Rake::Task['jenkins:unit'].enhance ['test:foreman_dhcp_browser']
end
