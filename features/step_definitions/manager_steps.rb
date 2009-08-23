Given /^the following engines$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |engine|
    Engine.create! engine
  end
end

When /^I visit "([^\"]*)"$/ do |arg1|
  visit new_engine_path
end

When /^add in the following engine$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |engine|
    visit new_engine_path
  end
end

Then /^I should be shown the newly created engine$/ do
  pending
end
