json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :name, :age, :gender
  json.url recipient_url(recipient, format: :json)
end
