json.array! @venues do |venue|
    json.extract! venue, :id, :title, :about, :lat, :lng, :url, :organizer_id, :modal_status
end
