class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image_location
      t.string :submitted_by
      t.integer :total_time
      t.integer :cook_time
      t.integer :prep_time
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps null: false
    end
  end
end
