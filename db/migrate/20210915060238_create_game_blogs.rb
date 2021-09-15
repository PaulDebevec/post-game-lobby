class CreateGameBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :game_blogs do |t|
      t.string :name

      t.timestamps
    end
  end
end
