json.array!(@activities) do |activity|
  json.extract! activity, :id, :activity_description, :date, :hours, :note, :user_id, :client_id, :project_id, :billable, :posted, :posted_date
  json.url activity_url(activity, format: :json)
end
