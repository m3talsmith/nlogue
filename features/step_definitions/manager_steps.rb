Given /^the following engines$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |engine_hash|
    Engine.create! engine_hash
  end
end