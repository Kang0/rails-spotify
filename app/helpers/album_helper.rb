module AlbumHelper

    def release_date(album)
        date = album.release_date.split("-")
        time = DateTime.new(date[0].to_i,date[1].to_i,date[2].to_i)
        time.strftime("Released %b %d, %Y")
    end

    def avg_rating(review)
        ratings_array = review.map(&:rating)
        ratings_array.inject{|sum, el| sum+el} / ratings_array.count
    end

end
