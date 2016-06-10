class CreatePosts < ActiveRecord::Migration
  has_many :comments

  def change
    create_table :posts do |t|

      t.timestamps null: false
      t.string :post
      t.string :title
      t.string :content
      t.string :image
      t.string :category
    end
  end
end
