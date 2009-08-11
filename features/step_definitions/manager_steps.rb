Given /^a engine_manager class$/ do
  @engine_manager = EngineManager.new
  @engine_manager.kind_of?(EngineManager).should be_true
end

When /^I ask for a list of all engines available and check the length$/ do
  @engines = Engine.find(:all)
end

Then /^I will see a length greater than 0$/ do
  @engines.length > 0
end