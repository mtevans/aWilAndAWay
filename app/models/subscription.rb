# == Schema Information
#
# Table name: subscriptions
#
#  id           :integer          not null, primary key
#  volunteer_id :integer          not null
#  occasion_id  :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Subscription < ActiveRecord::Base
  validates :volunteer_id, :occasion_id, presence: true

  belongs_to :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :volunteer_id

  belongs_to :occasion,
    class_name: :Occasion,
    primary_key: :id,
    foreign_key: :occasion_id

  has_one :venue,
    through: :occasion,
    source: :venue

end
