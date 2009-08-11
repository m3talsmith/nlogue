Given /^a engine_manager class$/ do
  @engine_manager = Engine.new
  @engine_manager.kind_of?(EngineManager).should be_true
end

Given /^a the database has at least 1 engine installed$/ do
  pending
end

When /^I ask for a list of all engines available and check the length$/ do
  pending
end

Then /^I will see a length greater than 0$/ do
  pending
end