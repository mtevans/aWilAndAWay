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

class Venue < ActiveRecord::Base
  validates :title, :description, :address, :lat, :lng, :email,
  :url, :organizer_id, :category, presence: true
  validates :title, uniqueness: true
  # will need associations here

  has_many :occasions,
    class_name: :Occasion,
    primary_key: :id,
    foreign_key: :venue_id


  belongs_to :user,
    class_name: :User,
    primary_key: :id,
    foreign_key: :organizer_id

  def self.in_bounds(bounds)

    self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end

end
