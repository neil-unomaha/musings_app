class CreateLabelsPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :labels_posts do |t|
      t.references :label, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
