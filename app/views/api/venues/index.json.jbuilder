json.array! @venues do |venue|
    json.extract! venue, :id, :title, :about, :zip_code, :url, :organizer_id
end
