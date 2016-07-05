json.array! @venues do |venue|
    json.extract! venue, :id, :title, :about, :description, :address, :lat, :lng, :email,
     :url, :organizer_id, :modal_status, :display_status, :category, :occasions
end
