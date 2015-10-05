json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :description, :reservation_id
  json.url feedback_url(feedback, format: :json)
end
