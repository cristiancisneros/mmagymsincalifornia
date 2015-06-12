json.array!(@mma_gyms) do |mma_gym|
  json.extract! mma_gym, :id, :name, :address, :phone, :website
  json.url mma_gym_url(mma_gym, format: :json)
end
