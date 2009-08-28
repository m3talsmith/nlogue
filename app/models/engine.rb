class Engine < ActiveRecord::Base
  validates_presence_of :name, :version
end