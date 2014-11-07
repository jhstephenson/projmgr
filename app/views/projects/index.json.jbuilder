json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :description, :client_id, :started, :completed, :type_id, :estimated_time, :actual_time, :billing_rate, :client_id
  json.url project_url(project, format: :json)
end
