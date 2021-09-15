class AddUsersToGameBlog < ActiveRecord::Migration[6.1]
  def change
    add_reference :game_blogs, :user, null: false, foreign_key: true
  end
end
