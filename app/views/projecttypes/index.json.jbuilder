json.array!(@projecttypes) do |projecttype|
  json.extract! projecttype, :id, :project_type, :project_id
  json.url projecttype_url(projecttype, format: :json)
end
