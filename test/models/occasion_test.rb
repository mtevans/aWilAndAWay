# == Schema Information
#
# Table name: occasions
#
#  id           :integer          not null, primary key
#  organizer_id :integer          not null
#  venue_id     :integer          not null
#  date         :date             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  start_time   :integer          not null
#  end_time     :integer          not null
#

require 'test_helper'

class OccasionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
