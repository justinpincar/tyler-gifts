json.array!(@traits) do |trait|
  json.extract! trait, :id, :name
  json.url trait_url(trait, format: :json)
end
