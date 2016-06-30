json.array! @venues do |venue|
    json.extract! venue, :id, :title, :about, :description, :address, :zip_code, :email, :url, :organizer_id
end
