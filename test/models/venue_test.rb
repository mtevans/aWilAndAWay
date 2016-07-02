# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  about        :string           not null
#  description  :text             not null
#  address      :string           not null
#  email        :string           not null
#  url          :string           default("http://res.cloudinary.com/dfld7chk4/image/upload/v1467237098/defualt_pic_st9qj2.jpg"), not null
#  organizer_id :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  lat          :float            not null
#  lng          :float            not null
#

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
