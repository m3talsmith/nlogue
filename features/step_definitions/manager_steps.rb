Given /^the following engines$/ do |table|
  table.hashes.each do |engine|
    Engine.create! engine
  end
end

When /^I create the following engine$/ do |table|
  @previous_engine_length = Engine.count
  
  table.hashes.each do |engine|
    visit admins_engines_path
    click_link "Create an Engine"
    fill_in "Name", :with => engine[:name]
    fill_in "Version", :with => engine[:version]
    click_button "Create"
  end
end

Then /^I should be shown the newly created engine$/ do
  new_count = @previous_engine_length + 1
  response.should have_selector(".engines") do |inner_selection|
    inner_selection.should have_selector(".engine", :count => new_count.to_i)
  end
end
