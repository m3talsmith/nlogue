class CreateEngines < ActiveRecord::Migration
  def self.up
    create_table :engines do |t|
      t.string  :name, :author, :version
      t.text    :homepage_uri, :repository_uri, :demo_uri
      t.boolean :is_active, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :engines
  end
end
