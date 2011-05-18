class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title, :null => false
      t.string :slug, :null => false
      t.string :description
      t.text :content
      t.string :layout
      t.string :url
      t.integer :views, :null => false, :default => 0
      t.boolean :published, :null => false, :default => false
      t.timestamp :published_at
      t.references :page
      t.boolean :active, :null => false, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
