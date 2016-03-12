SitemapGenerator::Sitemap.default_host = "https://karaoke.karaniwan.org"

SitemapGenerator::Sitemap.create do
  add about_path
  add submit_info_path
  add request_info_path

  add karaoke_places_path, :priority => 0.7, :changefreq => 'daily'

  KaraokePlace.all.each do |bar|
    add karaoke_place_path(bar), :lastmod => bar.updated_at
  end

  KaraokeMachine.all.each do |device|
    add karaoke_machine_path(device), :lastmod => device.updated_at
    add ktvs_karaoke_machine_path(device), :lastmod => device.updated_at
    add songs_karaoke_machine_path(device), :lastmod => device.updated_at
  end

  add artists_path, :priority => 0.7, :changefreq => 'daily'

  Artist.all.each do |artist|
    add artist_path(artist), :lastmod => artist.updated_at
  end

  add songs_path, :priority => 0.7, :changefreq => 'daily'

  Song.all.each do |song|
    add song_path(song), :lastmod => song.updated_at
  end
end
