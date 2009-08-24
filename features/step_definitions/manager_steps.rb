Given /^the following engines$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |engine|
    Engine.create! engine
  end
end

When /^I create the following engine$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |engine|
    visit engines_path
    click_link "Create an Engine"
    fill_in "Name", engine.name
    fill_in "Version", engine.version
    click_button "Create"
  end
end

Then /^I should be shown the newly created engine$/ do
  pending
end
