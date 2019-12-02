class CommentAuthor < ActiveRecord::Migration[6.0]
  def change
    remove_column :active_admin_comments, :author_id, type=:uuid
    add_column :active_admin_comments, :author_id, :integer
    add_index :active_admin_comments, [:author_type, :author_id], name: 'index_active_admin_comments_on_author_type_and_author_id'
  end
end
