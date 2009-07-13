class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :brief
      t.string :client
      t.datetime :created_at
      t.string :contribution
      t.string :partner
      t.integer :cost
      t.integer :days
      t.integer :enjoyment
      t.integer :permission
      t.boolean :visible
      t.string :url
      t.date :completed_on

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
