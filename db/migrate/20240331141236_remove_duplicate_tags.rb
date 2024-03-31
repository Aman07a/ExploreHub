class RemoveDuplicateTags < ActiveRecord::Migration[7.1]
  def change
    execute <<-SQL
      DELETE FROM tags WHERE id NOT IN (
        SELECT MIN(id)
        FROM tags
        GROUP BY title
      )
    SQL
  end
end
