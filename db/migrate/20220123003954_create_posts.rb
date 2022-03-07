class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :author, null: false, foreign_key: true
      t.references :medium_type, null: false, foreign_key: true
      t.string :reference
      t.string :title

      t.timestamps
    end
  end
end
