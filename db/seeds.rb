Band.all.destroy_all
Album.all.destroy_all
Track.all.destroy_all

b1 = Band.create!(name: "Taylor Swift")
b2 = Band.create!(name: "Imagine Dragons")
b3 = Band.create!(name: "The Band Perry")

a1 = Album.create!(name: "1989", album_type: "Studio", band_id: b1.id)
a2 = Album.create!(name: "Speak Now", album_type: "Studio", band_id: b1.id)
a3 = Album.create!(name: "Smoke+Mirrors", album_type: "Studio", band_id: b2.id)
a4 = Album.create!(name: "Night Visions", album_type: "Studio", band_id: b2.id)
a5 = Album.create!(name: "The Band Perry", album_type: "Live", band_id: b3.id)

t1 = Track.create!(title: "Shake It Off", track_type: "Regular", album_id: a1.id)
t2 = Track.create!(title: "Style", track_type: "Bonus", album_id: a1.id)
t3 = Track.create!(title: "Sparks Fly", track_type: "Regular", album_id: a2.id)
t4 = Track.create!(title: "Ours", track_type: "Regular", album_id: a2.id)
t5 = Track.create!(title: "Warriors", track_type: "Bonus", album_id: a3.id)
t6 = Track.create!(title: "Radioactive", track_type: "Regular", album_id: a4.id)
t7 = Track.create!(title: "If I Die Young", track_type: "Regular", album_id: a5.id)
