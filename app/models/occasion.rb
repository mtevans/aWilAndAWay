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

class Occasion < ActiveRecord::Base
  validates :organizer_id, :venue_id, :date, :start_time,
            :end_time, presence: true

  belongs_to :venue,
    class_name: :Venue,
    primary_key: :id,
    foreign_key: :venue_id

end
