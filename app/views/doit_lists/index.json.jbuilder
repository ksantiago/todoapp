json.array!(@doit_lists) do |doit_list|
  json.extract! doit_list, :id, :title, :description
  json.url doit_list_url(doit_list, format: :json)
end
