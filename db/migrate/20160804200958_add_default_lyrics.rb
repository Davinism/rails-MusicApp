class AddDefaultLyrics < ActiveRecord::Migration
  def change
    change_column :tracks, :lyrics, :text, default: "Lyrics coming soon!"
  end
end
