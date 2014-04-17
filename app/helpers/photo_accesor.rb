helpers do

  def get_ten_best_photos_today
    photos = flickr.interestingness.getList( :per_page => 10 )
    ten_best = []
    photos.each do |pic|
      photo_info = flickr.photos.getInfo(:photo_id => pic.id)
      photo_url = FlickRaw.url_m(photo_info)
      ten_best << photo_url
    end
    ten_best
  end
end