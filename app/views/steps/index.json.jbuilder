json.array!(@steps) do |step|
  json.extract! step, :id, :content, :time_to_perform, :recipe_id
  json.url step_url(step, format: :json)
end
