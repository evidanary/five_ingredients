json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :image_location, :submitted_by, :total_time, :cook_time, :prep_time, :created_at, :updated_at
  json.url recipe_url(recipe, format: :json)
end
