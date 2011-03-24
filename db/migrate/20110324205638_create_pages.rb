class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title, :null => false
      t.string :slug, :null => false
      t.string :description
      t.text :content
      t.string :layout
      t.string :url
      t.integer :views, :default => 0
      t.boolean :published, :default => false
      t.timestamp :published_at
      
      t.references :page, :default => 1

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
