class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.references :game_blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
