json.array!(@semillas) do |semilla|
  json.extract! semilla, :id, :name, :description, :picture
  json.url semilla_url(semilla, format: :json)
end
