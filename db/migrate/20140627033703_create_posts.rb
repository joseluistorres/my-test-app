class CreatePosts < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE EXTENSION "uuid-ossp";
    SQL
    create_table :posts, id: :uuid do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
