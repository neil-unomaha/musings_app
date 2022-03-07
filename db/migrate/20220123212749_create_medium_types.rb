class CreateMediumTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :medium_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
