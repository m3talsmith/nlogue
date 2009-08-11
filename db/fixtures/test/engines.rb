# == Schema Info
# Schema version: 20090809214410
#
# Table name: engines
#
#  id             :integer         not null, primary key
#  author         :string(255)
#  demo_uri       :text
#  homepage_uri   :text
#  is_active      :boolean
#  name           :string(255)
#  repository_uri :text
#  version        :string(255)
#  created_at     :datetime
#  updated_at     :datetime

[
  {:name => "simple_athentication", :version => "0.1"},
  {:name => "simple_content", :version => "0.1"},
  {:name => "simple_content_tagging", :version => "0.1"}
].each do |engine|
  Engine.seed(:name) do |seedling|
    engine.each_pair do |key, value|
      eval("#{seedling}.#{key} = #{value}")
    end
  end
end