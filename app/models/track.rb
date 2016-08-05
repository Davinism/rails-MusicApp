# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  album_id   :integer          not null
#  track_type :string           not null
#  lyrics     :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
  TRACK_TYPES = %w(Regular Bonus)
  validates :title, :album_id, :track_type, :lyrics, presence: true
  validates :track_type, inclusion: { in: TRACK_TYPES }

  belongs_to :album,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: :Album

  has_one :band,
    through: :album,
    source: :band
end
