class CreateBlogPages < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_pages do |t|

      t.timestamps
    end
  end
end
