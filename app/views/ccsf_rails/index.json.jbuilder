json.array!(@ccsf_rails) do |ccsf_rail|
  json.extract! ccsf_rail, :id, :index, :links, :about
  json.url ccsf_rail_url(ccsf_rail, format: :json)
end
