begin
  require  'cucumber'
  $:.unshift(RAILS_ROOT + '/vendor/plugins/cucumber/lib')
  require 'cucumber/rake/task'

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = "--format pretty"
  end
  task :features => 'db:test:prepare'
rescue Exception
  # Cucumber probably just isn't installed yet
end