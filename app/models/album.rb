# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  album_type :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#

class Album < ActiveRecord::Base
  ALBUM_TYPES = %w(Studio Live)
  validates :band_id, :album_type, :name, presence: true
  validates :album_type, inclusion: { in: ALBUM_TYPES }

  belongs_to :band,
    primary_key: :id,
    foreign_key: :band_id,
    class_name: :Band

  has_many :tracks, dependent: :destroy,
    primary_key: :id,
    foreign_key: :album_id,
    class_name: :Track
end
