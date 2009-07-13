class CreatePreview < ActiveRecord::Migration
  
  def self.up
    create_table :previews do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.integer :project_id
      t.string :content_type
      t.string :filename    
      t.string :thumbnail 
      t.integer :size
      t.integer :width
      t.integer :height
    end
  end

  def self.down
    drop_table :previews
  end
end
