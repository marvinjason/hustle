json.extract! job, :id, :name, :description, :start_timestamp, :end_timestamp, :created_at, :updated_at
json.url job_url(job, format: :json)
