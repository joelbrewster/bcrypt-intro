class CreateComments < ActiveRecord::Migration
  belongs_to :posts

  def change
    change_table :comments do |t|

      t.timestamps null: false
      t.references :post, index: true, foreign_key: true, on_delete: :cascade
      t.string :content
      t.boolean :like
    end
  end
end
