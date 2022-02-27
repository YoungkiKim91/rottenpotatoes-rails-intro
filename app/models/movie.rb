class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R']
  end
  
  def self.with_ratings(ratings_list)
    return Movie.all if ratings_list.empty?
    return Movie.where(rating: ratings_list)
  end
  
  def self.sort(sort_key)
    if sort_key == "title"
      return Movie.order("title")
    elsif sort_key == "release_date"
      return Movie.order("release_date")
    end
  end
  
end