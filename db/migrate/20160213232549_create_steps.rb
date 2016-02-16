class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :content
      t.integer :time_to_perform
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
